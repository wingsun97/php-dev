FROM ghcr.io/wingsun97/php-dev:8.3-cli-devbase

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
 && rm -rf /var/lib/apt/lists/*

ENV PIP_CACHE_DIR=$DEV_HOME/pip

RUN pip install --no-cache-dir virtualenv pipx

ENV PATH=$HOME/.local/bin:$PATH
