FROM wordpress:cli

USER root
RUN apk add --no-cache git jq

COPY entrypoint.sh /entrypoint.sh
COPY axtra axtra/
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
