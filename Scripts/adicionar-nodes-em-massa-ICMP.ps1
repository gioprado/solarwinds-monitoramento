<#
.SYNOPSIS
    Adiciona múltiplos nodes ICMP ao SolarWinds Orion e configura os pollers de status e tempo de resposta.

.DESCRIPTION
    Este script conecta à API do SolarWinds (SWIS) e adiciona nós usando apenas ICMP (ping),
    configurando manualmente os pollers básicos.

.NOTES
    Autora: Giovana Prado
    Empresa: Aeon IT
    Data: Julho/2025
#>

# Conecta ao SWIS (ajuste IP e credenciais conforme necessário)
$swis = Connect-Swis -UserName "Usenamesolarwinds" -Password "SENHA" -Hostname "IP DA CONSOLE"

# Lista de IPs a serem adicionados
$ip_list = @("8.8.8.8", "8.8.1.1")

foreach ($ip_address in $ip_list) {
    Write-Host "`n➡️  Adicionando node: $ip_address" -ForegroundColor Cyan

    # Define propriedades do novo node (ICMP)
    $newNodeProps = @{
        IPAddress       = $ip_address
        EngineID        = 1
        ObjectSubType   = "ICMP"
        Caption         = $ip_address
        PollInterval    = 300  # 5 minutos
    }

    try {
        $newNodeUri = New-SwisObject $swis -EntityType "Orion.Nodes" -Properties $newNodeProps
        $nodeProps = Get-SwisObject $swis -Uri $newNodeUri
        $nodeId = $nodeProps["NodeID"]
        Write-Host "✅ Node adicionado com sucesso. NodeID: $nodeId" -ForegroundColor Green
    } catch {
        Write-Error "❌ Falha ao adicionar o node $ip_address. $_"
        continue
    }

    # Registra os pollers manualmente
    $poller = @{
        NetObject     = "N:$nodeId"
        NetObjectType = "N"
        NetObjectID   = $nodeId
    }

    # Poller de status (ICMP)
    $poller["PollerType"] = "N.Status.ICMP.Native"
    $null = New-SwisObject $swis -EntityType "Orion.Pollers" -Properties $poller

    # Poller de response time (ICMP)
    $poller["PollerType"] = "N.ResponseTime.ICMP.Native"
    $null = New-SwisObject $swis -EntityType "Orion.Pollers" -Properties $poller

    Write-Host "🔧 Pollers configurados para o node." -ForegroundColor Yellow
}
