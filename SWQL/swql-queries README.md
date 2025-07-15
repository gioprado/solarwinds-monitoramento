# 📊 Consultas SWQL (SolarWinds Query Language)

Este diretório reúne consultas otimizadas em SWQL para gerar relatórios, dashboards e métricas avançadas no SolarWinds.

## 📂 Exemplos de Consultas

| Nome do Arquivo | Objetivo |
|-----------------|----------|
| `disponibilidade-ultimo-mes.swql` | Retorna a porcentagem disponibilidade de uma interface no último mês |
| `consumo-banda-link.swql` | Compara uso de banda real com limite contratado (ideal para WAN) |
| `status-agent-linux.swql` | Verifica status dos agentes em servidores Linux |

## 🧠 Sobre SWQL

SWQL é uma linguagem proprietária da SolarWinds baseada em SQL, otimizada para leitura do banco do Orion via API.

## 💡 Dica

Você pode testar essas consultas usando o **SolarWinds SWQL Studio** ou diretamente nos widgets de dashboard personalizados.

## 📷 Exemplos Visuais

<img src="../imagens/dashboard-disponibilidade.png" width="400" />
<img src="../imagens/dashboard-trafego-wan.png" width="400" />

## 🛑 Aviso

Evite utilizar SWQL diretamente em ambientes críticos sem validação prévia. Algumas consultas podem gerar carga elevada.

