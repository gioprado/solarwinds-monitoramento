# 🔎 Caso de Uso – Rastreamento de Dispositivos com User Device Tracker (UDT)

## 🎯 Objetivo

Utilizar o SolarWinds UDT para rastrear dispositivos conectados à rede, identificar comportamentos suspeitos (como portas flapping ou sobrecarregadas) e melhorar a visibilidade da infraestrutura de acesso.

## 🛠️ Ferramentas Utilizadas

- SolarWinds User Device Tracker (UDT)
- Switches com SNMP habilitado
- Dashboards UDT

## 🧠 Situação Inicial

A equipe de suporte identificou lentidão e falhas de comunicação em estações de trabalho de um setor específico. Havia suspeitas de conflitos de IP, conexões flapping e possíveis loops na rede local.

## 🔍 Diagnóstico com UDT

1. Ativei o rastreamento UDT nos switches de acesso.
2. Mapeei MAC/IP e a localização física dos dispositivos conectados.
3. Usei o histórico de movimentação do UDT para entender o comportamento das conexões.
4. Configurei alertas para:
   - Portas com flapping frequente
   - Portas sobrecarregadas com muitos dispositivos conectados
   - Dispositivos móveis alternando portas com frequência

## 💡 Ações e Resultados

- Identificamos uma impressora com IP estático duplicado, causando conflito.
- Detectamos portas com looping devido a conexão de switches não gerenciáveis.
- Aplicamos VLANs e configuramos alertas proativos.
- O tempo médio de resolução de incidentes relacionados caiu em 70%.
