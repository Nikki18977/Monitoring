```bash
docker compose -f docker-compose_v3_ubuntu_mysql_latest.yaml up -d
```

В интерфейсе  `zabbix-server` указать DNS имя  `zabbix-agent`

Запустить генератор метрик

```bash
docker exec -it zabbix-docker-metrics-generator-1 systemctl status metrics-generator.service
```

```txt
chat id : -1001834957574
```
