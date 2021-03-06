FROM golang:1.11-alpine

RUN apk add --no-cache bash \
                       curl \
                       docker \
                       git \
                       mercurial \
                       rpm

ENTRYPOINT ["/entrypoint.sh"]
CMD [ "-h" ]

COPY entrypoint.sh /entrypoint.sh
COPY goreleaser /bin/goreleaser

RUN chmod +x /entrypoint.sh
