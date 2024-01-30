# tg-sender-docker
```shell
  docker build -t telegram-curl-bot . 
  docker run --rm telegram-curl-bot -e TOKEN CHATID "test notification"
  docker run --rm --env-file .env telegram-curl-bot CHATID "test notification"
```
