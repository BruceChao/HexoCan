FROM scratch
MAINTAINER Jianying Li <lijianying12@gmail.com>

ADD ./rootfs.tar / 
RUN mkdir -p /app
WORKDIR /app
COPY ./static /app/
RUN git clone git://github.com/BruceChao/hexo.git /public
EXPOSE 8080

CMD ["/app/static"]
