FROM erseco/alpine-php-webserver:3.17.0

LABEL maintainer="Benjamin Schmitz <dev@benjamin-schmitz.org>"
LABEL description="Lightweight, no-install screen capture tool based on Docker"

USER root
RUN apk add --no-cache ffmpeg
USER nobody

WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
RUN mkdir /var/www/html/input
RUN mkdir /var/www/html/output

COPY convert.php .
COPY index.html .

ENV file_uploads=On \
    post_max_size=256M \
    upload_max_filesize=256M \
    memory_limit=512M \
