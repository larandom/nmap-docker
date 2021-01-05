FROM alpine:latest

ENV HOME /home/user

RUN set -eux; \
	adduser -u 1000 -D -h "$HOME" user; \
	chown -R user:user "$HOME"; \
	apk add --no-cache \
		nmap \
		nmap-scripts

WORKDIR $HOME

USER user
ENTRYPOINT ["nmap"]
