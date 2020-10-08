FROM alpine:3.11 AS builder

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache --virtual .build-deps \
	gcc \
	g++ \
	make  \
	fortify-headers 

WORKDIR /build

COPY ./fping-4.2.tar.gz .

RUN tar -vxf fping-4.2.tar.gz \
	&& (cd fping-4.2 \
	&& ./configure \
	&& make) \
 	&& apk del .build-deps 

FROM alpine:3.11

LABEL maintainer="fengying0347@163.com" 

RUN  sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
	
RUN apk add --no-cache --virtual .fping-rundeps \
	curl \
	bash
WORKDIR /cloudflare

COPY --from=builder /build/fping-4.2/src/fping .
COPY --from=builder /build/fping-4.2/src/cf.sh .
