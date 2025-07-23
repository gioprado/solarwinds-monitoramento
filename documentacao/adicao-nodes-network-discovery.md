# 🛰️ Documentação – Adicionar Dispositivos com Network Sonar Wizard

Esta documentação explica, passo a passo, como usar o **Network Sonar Discovery Wizard** do SolarWinds Orion para **descobrir**, **selecionar** e **importar** dispositivos de rede (nodes).


## 🎯 Objetivo

Facilitar a inclusão automática de switches, roteadores, servidores e outros dispositivos no SolarWinds, garantindo visibilidade, monitoramento e mapeamento da rede.

---

## 🧭 Passo a passo

### 1. Acessar o Network Discovery
- Navegue até: `Settings > Network Discovery`  
- Clique em **Add New Discovery** e pressione **Next** 

### 2. Selecionar redes/IPs
- Escolha entre:
  - Faixas de IP (ex: `192.168.1.0/24`)
  - Subnetes (até /23 recomendado)
  - Lista de IPs
  - Active Directory Domain Controller.
 
    <img width="668" height="372" alt="image" src="https://github.com/user-attachments/assets/7adb3327-dc62-4cd2-868d-387c1ca13971" />


### 3. Credenciais
- **SNMP**: insira credenciais v2/v3 para switches, roteadores e equipamentos.
- **WMI**: adicione credenciais para máquinas Windows.
- **Virtualização**: opcionalmente, inclua credenciais para VMware(vCenter/ESX):
  
  <img width="390" height="27" alt="image" src="https://github.com/user-attachments/assets/b9da8491-51db-432c-82dc-10e68f007abb" />


### 4. Configuração do monitoramento
- No primeiro uso, prefira **“Manually set up monitoring after devices are discovered”** para selecionar manualmente o que será importado :

  <img width="621" height="291" alt="image" src="https://github.com/user-attachments/assets/5fe39eb5-23d4-40f6-8c67-32e1c46dd46d" />


### 5. Agendamento e execução
- Defina a periodicidade (Por exemplo: Diário) ou você pode executa-lo no momento
- Clique em **Discover** para iniciar. Pode levar de minutos a horas, dependendo do ambiente

  <img width="760" height="140" alt="image" src="https://github.com/user-attachments/assets/a1b44c57-8828-4d19-88c1-6afb2acf1a81" />


### 6. Revisar e importar
- Após a varredura, uma lista com os dispositivos detectados será exibida
- Selecione os tipos: routers, switches, servidores etc.
- Escolha quais interfaces e volumes serão monitorados.
- Finalize na aba **Import Preview** e clique **Import**.

  <img width="568" height="225" alt="image" src="https://github.com/user-attachments/assets/dc071866-4b40-44a6-bc31-347d76169b1f" />
  <img width="354" height="389" alt="image" src="https://github.com/user-attachments/assets/db0bf38f-b854-46c3-9ddc-6fae0b9fae66" />


### 7. Verificar resultados
- Vá em `Setting > Manage Nodes`

---

## 💡 Dicas práticas

- Nomeie cada sessão de descoberta (ex: `Discovery_SP_Matriz`) para organização.
- Use jobs frequentes para detectar novos dispositivos.
- Reaproveite e edite credenciais em descobertas futuras.
- Em grandes ambientes, faça Discoberys menores para evitar sobrecarga.

---

## 📄 Referências oficiais

🔗 [Network Discovery Using the Network Sonar Wizard (SW1574)](https://documentation.solarwinds.com/en/success_center/orionplatform/content/core-network-discovery-using-the-network-sonar-wizard-sw1574.htm)


---

Com este guia, você e sua equipe poderão configurar descobertas com sucesso, manter o inventário atualizado e garantir base sólida para monitoramento. 🚀


