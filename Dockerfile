FROM alpine:latest
RUN apk add --no-cache curl unzip
RUN curl -L https://github.com -o xray.zip && \
    unzip xray.zip && chmod +x xray && rm xray.zip
COPY config.json /config.json
CMD ["./xray", "-c", "/config.json"]
