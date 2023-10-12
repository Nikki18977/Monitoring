### Добавлен кластер VictoriaMetrics в роли долговременного хранилища
- vmstorage с периодом хранения 2 недели `--retentionPeriod=2w`
- vmselect
- vminsert
- vmauth

## Prometheus добавляет новый лейбл `site: 'prod'` при записи в хранилище через параметр конфигурации `external_labels`

## Настроен сбор метрик компонентов кластера. В Grafana созданы датасорс `Prometheus-VM` и дашборд  `Victoriametrics-cluster.json`


