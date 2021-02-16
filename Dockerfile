FROM bitnami/symfony:1

COPY . /app/contao/repo
COPY heroku.composer.json /app/contao/composer.json
COPY heroku.composer.lock /app/contao/composer.lock

RUN cd /app/contao && composer install --no-dev
