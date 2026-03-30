FROM ghcr.io/wingsun97/php-dev:8.3-cli-devbase

# 这里可以加 PHP 专属工具（可选）
RUN pecl install xdebug \
 && docker-php-ext-enable xdebug || true