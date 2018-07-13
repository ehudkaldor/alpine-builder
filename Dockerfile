###########################################################
#
#	a base for buidling alpine apk packages
#
###########################################################

FROM		alpine:latest
MAINTAINER	Ehud Kaldor <ehud@UnfairFunction.org>

RUN		apk update && \
			apk add alpine-sdk git && \
			adduser -D builder && \
			passwd -u builder && \
			echo "builder ALL=NOPASSWD: ALL" > /etc/sudoers.d/builer && \
			chmod 0440 /etc/sudoers.d/builer && \
			visudo -c && \
      rm -rf /var/cache/apk/*
