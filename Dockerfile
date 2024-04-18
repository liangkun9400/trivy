FROM alpine:3.19.1
COPY contrib/* contrib/
RUN apk --no-cache add ca-certificates git curl && \
    sh -s contrib/install.sh -b /usr/local/bin v0.50.1
ENTRYPOINT ["trivy"]
