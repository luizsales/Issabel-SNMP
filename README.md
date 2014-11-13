SNMP no Elastix
===============

**Instalação SNMP**

No CentOS, CentOS release 5.9 (Final), vamos instalar o "net-snmp" e o "net-snmp-utils": 
```
# yum install net-snmp net-snmp-utils 
```
Copiar as MIBS para /usr/share/snmp/mibs
```
cp ASTERISK-MIB.txt /usr/share/snmp/mibs
cp DIGIUM-MIB.txt /usr/share/snmp/mibs
```

**Configurando o SNMP**

Edite o arquivo /etc/asterisk/res_snmp.conf 

Descomentando as seguintes linhas:
subagent=yes
enable=yes



 


