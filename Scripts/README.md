# 📜 Scripts para Monitoramento

Este diretório contém scripts de automação para auxiliar no gerenciamento e monitoramento de ambientes usando SolarWinds.

## 📂 Scripts Disponíveis

| Nome do Script | Descrição | Linguagem |
|----------------|-----------|-----------|
| `adicionar-nodes-em-massa-ICMP.ps1` | Adiciona múltiplos nodes ICMP via PowerShell mesmo que não estejam respondendo ao PING| PowerShell |

## 🛠️ Pré-requisitos

- SolarWinds Orion com API habilitada/ Baixar Solarwinds SDK: https://github.com/solarwinds/OrionSDK/releases/download/v3.2.0.50049/OrionSDK.msi
- PowerShell 5.1 ou superior
- Credenciais de administrador no SolarWinds

## 📌 Observações

Alguns scripts exigem que você edite os parâmetros manualmente (como IPs, nomes de comunidade SNMP, etc.). Sempre revise antes de executar em produção.

