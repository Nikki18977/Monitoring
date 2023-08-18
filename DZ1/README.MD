В файле /etc/hosts `Docker хоста` прописать домен `local.test` для ip интерфейса, на котором слушает Nginx

Скачать Wordpress в каталог wordpress

Выпустить сертификат, выполнив на Docker хосте

```bash
openssl req -x509 -nodes -days 30 -newkey rsa:2048 \
    -keyout server.key \
    -out server.crt \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=Otus/CN=local.test" \
    -addext "subjectAltName = IP:127.0.0.1" 
```

Сгенерировать данные для авторизации к Prometheus

```txt
htpasswd -cb .htpasswd <имя_пользователя> <пароль>  
```
Поднять контейнеры

```txt
docker compose up -d
```
Доступ к странице Wordpress по https://local.test/
Prometheus слушает на http://local.test:9090
