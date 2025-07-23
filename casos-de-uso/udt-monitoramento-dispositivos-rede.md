# ✈️ Caso de Uso – SolarWinds UDT: 

# Explicando UDT como se sua rede fosse um aeroporto

Imagine que sua empresa é como um **grande aeroporto**, e todos os dispositivos  notebooks, impressoras, telefones IP são passageiros. O que você mais precisa saber é: **quem entrou, onde está agora e por onde passou**.

É aí que entra o **UDT (User Device Tracker)** da SolarWinds.

---

## 🧠 

| Aeroporto                     | Sua Rede                                      |
|------------------------------|-----------------------------------------------|
| Passageiros                  | Dispositivos conectados à rede                |
| Portões de embarque          | Portas dos switches                           |
| Check-in e embarque          | Conexão do dispositivo ao switch              |
| Agente de segurança (raio-x) | UDT monitorando MAC, IP, porta e VLAN         |
| Histórico de viagem          | Histórico de conexões (onde já se conectou)  |

Assim como um aeroporto moderno consegue rastrear um passageiro desde o embarque até o destino, o **UDT rastreia cada dispositivo** que entra na sua rede.

---

## 🛠️ Como o UDT funciona na prática

1. **Detecta conexões físicas** – Toda vez que um dispositivo conecta-se a uma porta de switch, o UDT registra a **porta**, **IP**, **MAC** e **VLAN**.
2. **Monitora mudanças** – Se o notebook for levado para outra sala (ou seja, outro switch), o UDT acompanha a movimentação.
3. **Ajuda na segurança** – Caso um dispositivo não autorizado se conecte, o UDT pode disparar um alerta ou bloqueá-lo (se integrado).
4. **Histórico detalhado** – É possível consultar onde aquele notebook esteve conectado nos últimos dias.

---

## 🔎 Por que isso é importante?

Imagine que um notebook infectado foi detectado na rede. Com o UDT, você rapidamente consegue:
- Ver **onde ele está conectado agora**
- Saber **por quais switches ele passou**
- Entender **qual VLAN ele usou**
- Bloquear ou isolar o dispositivo

---

## 🧪 Exemplo real aplicado

> Em uma empresa com 20 switches de acesso e 300 usuários, o UDT foi configurado para rastrear todos os dispositivos por porta. Após a identificação de um comportamento suspeito em uma impressora Wi-Fi, o time usou o UDT para identificar que ela havia sido reconectada via cabo físico em uma porta não documentada — e a VLAN estava errada.

Com o histórico do UDT, foi possível rastrear toda a movimentação e corrigir a falha antes que causasse um incidente maior.

---

## 🎓 Conclusão

O **User Device Tracker** é como seu **radar de segurança e rastreamento de ativos** dentro da rede. Ele transforma cada porta de switch em um ponto de controle, permitindo que sua equipe de TI tenha visibilidade total — como um aeroporto bem gerenciado.

---

