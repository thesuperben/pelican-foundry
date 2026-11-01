FROM ghcr.io/pelican-eggs/yolks:wine_latest

USER root

# Force update and reinstall the root CA certificates
RUN apt-get update \
    && apt-get install -y --reinstall ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

USER container
