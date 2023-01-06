# Zabbix Server 6.0 LTS

## Environment

Nome       | vCPUs | Memoria RAM | IP            | S.O.¹           | Script de Provisionamento²
---------- |:-----:|:-----------:|:-------------:|:---------------:| -----------------------------
zabbix-server       | 1     | 2048MB      | 192.168.56.10 | silvemerson/ubuntu-20-04-ansible | 
zabbix-db    | 1     | 512MB       | 192.168.56.20 | silvemerson/ubuntu-20-04-ansible | 


```
git clone https://github.com/silvemerson/zbx-vagrant.git

cd zbx-vagrant

vagrant up

```

Access Zabbix: http://192.168.56.10/zabbix

