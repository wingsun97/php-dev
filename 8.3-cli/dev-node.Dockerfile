FROM ghcr.io/wingsun97/php-dev:8.3-cli-devbase

ARG NODE_VERSION=22

RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
 && apt-get update \
 && apt-get install -y --no-install-recommends nodejs \
 && rm -rf /var/lib/apt/lists/*

RUN corepack enable \
 && corepack prepare pnpm@latest --activate

ENV PNPM_HOME=$DEV_HOME/pnpm
ENV PATH=$PNPM_HOME:$PATH
