#!/bin/bash

FILE_ENV=.env

if [ ! -f "$FILE" ]; then
    echo $1 | sudo -S docker-compose exec -T curso_api_cache php -r "file_exists('.env') || copy('.env.example', '.env');"
fi
    echo $1 | sudo -S docker-compose exec -T curso_api_cache cat  > .env <<- "EOF"
    APP_NAME="Api Cache"
    APP_ENV=production
    APP_KEY=
    APP_DEBUG=false
    APP_URL="https://minharendapassiva.com.br"

    LOG_CHANNEL=stack
    LOG_LEVEL=debug

    DB_CONNECTION=mysql
    DB_HOST=$2
    DB_PORT=3306
    DB_DATABASE=$3
    DB_USERNAME=$4
    DB_PASSWORD=$5

    BROADCAST_DRIVER=log
    CACHE_DRIVER=redis
    FILESYSTEM_DRIVER=local
    QUEUE_CONNECTION=redis
    SESSION_DRIVER=redis
    SESSION_LIFETIME=120

    MEMCACHED_HOST=127.0.0.1

    REDIS_HOST=127.0.0.1
    REDIS_PASSWORD=null
    REDIS_PORT=6379

    MAIL_MAILER=smtp
    MAIL_HOST=mailhog
    MAIL_PORT=1025
    MAIL_USERNAME=null
    MAIL_PASSWORD=null
    MAIL_ENCRYPTION=null
    MAIL_FROM_ADDRESS=null
    MAIL_FROM_NAME="${APP_NAME}"

    AWS_ACCESS_KEY_ID=
    AWS_SECRET_ACCESS_KEY=
    AWS_DEFAULT_REGION=us-east-1
    AWS_BUCKET=
    AWS_USE_PATH_STYLE_ENDPOINT=false

    PUSHER_APP_ID=
    PUSHER_APP_KEY=
    PUSHER_APP_SECRET=
    PUSHER_APP_CLUSTER=mt1

    MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
    MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
    EOF
