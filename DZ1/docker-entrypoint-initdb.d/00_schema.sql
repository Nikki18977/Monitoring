CREATE USER 'exporter'@'172.16.0.0/24' IDENTIFIED BY 'exporterpass';
GRANT PROCESS, REPLICATION CLIENT ON *.* TO 'exporter'@'172.16.0.0/24';
GRANT SELECT ON performance_schema.* TO 'exporter'@'172.16.0.0/24';