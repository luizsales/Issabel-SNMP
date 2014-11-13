SNMP no Elastix
===============

**Instalação SNMP**

No CentOS, CentOS release 5.9 (Final), vamos instalar o "net-snmp" e o "net-snmp-utils": 
```
#yum install -y net-snmp net-snmp-utils net-snmp-devel bzip2 bzip2-devel lm_sensors lm_sensors-devel newt newt-devel
```
Copiar as MIBS para /usr/share/snmp/mibs
```
cp ASTERISK-MIB.txt /usr/share/snmp/mibs
cp DIGIUM-MIB.txt /usr/share/snmp/mibs
```

**Configurando o SNMP**

Edite o arquivo /etc/asterisk/res_snmp.conf 

Descomentando as seguintes linhas:
```
subagent=yes
enable=yes
```
**Configurando o SNMP AgentX**
Configurar o SNMP AgentX Protocol e o acesso do Asterisk SNMP subagent ao SNMP master daemon.
 

Vamos inserir em /etc/snmp/snmpd.conf 2 linhas
```
# Enable AgentX support
master agentx

# Set permissions on AgentX socket and containing
# directory such that process in group 'asterisk'
# will be able to connect
agentXPerms  0660 0550 nobody asterisk
```

 


