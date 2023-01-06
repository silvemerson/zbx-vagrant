create database IF NOT EXISTS zabbix character set utf8mb4 collate utf8mb4_bin;

create user IF NOT EXISTS zabbix@'192.168.56.10' identified by 'zabbix';

grant all privileges on zabbix.* to zabbix@'192.168.56.10';

set global log_bin_trust_function_creators = 1;