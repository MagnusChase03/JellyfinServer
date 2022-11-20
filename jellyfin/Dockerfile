FROM ubuntu:22.04

RUN apt update -y \
    && apt upgrade -y \
    && apt install ffmpeg -y \
    && apt install wget -y \
    && apt install curl -y \
    && apt install openssl -y

RUN mkdir -p /opt/jellyfin
WORKDIR /opt/jellyfin

RUN wget https://repo.jellyfin.org/releases/server/linux/stable/combined/jellyfin_10.8.7_amd64.tar.gz \
    && tar xvzf jellyfin_10.8.7_amd64.tar.gz \
    && ln -s jellyfin_10.8.7 jellyfin \
    && mkdir -p data \
    && mkdir -p cache \
    && mkdir -p config \
    && mkdir -p log \
    && mkdir -p movies \ 
    && mkdir ssl

RUN openssl req -x509 -newkey rsa:4096 -keyout ./ssl/privkey.pem -out ./ssl/cert.pem -days 365 -nodes -subj '/CN=localhost' \
    && openssl pkcs12 -export -out ./ssl/jellyfin.pfx -inkey ./ssl/privkey.pem -in ./ssl/cert.pem -passout pass:

COPY run.sh .
RUN chmod +x run.sh

VOLUME /opt/jellyfin/data
VOLUME /opt/jellyfin/cache
VOLUME /opt/jellyfin/config
VOLUME /opt/jellyfin/log
VOLUME /opt/jellyfin/movies
VOLUME /opt/jellyfin/ssl

CMD ["/opt/jellyfin/run.sh"]
