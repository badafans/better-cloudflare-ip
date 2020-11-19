FROM alpine:3.11 AS builder

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache --virtual .build-deps \
	gcc \
	g++ \
	make  \
    fortify-headers 

WORKDIR /build

COPY ./linux ./linux

RUN chmod  -R 755 linux

RUN  cd  linux \
	&& ls \
	&& ./configure  \
	&& make
	
RUN apk del .build-deps 

FROM alpine:3.11

LABEL maintainer="fengying0347@163.com" 

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
	
RUN apk add --no-cache --virtual .fping-rundeps \
	curl \
	bash
WORKDIR /cloudflare

COPY --from=builder /build/linux/src/fping .
COPY --from=builder /build/linux/src/cf.sh .
