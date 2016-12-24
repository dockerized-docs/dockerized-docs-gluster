FROM httpd:2.4.23-alpine
MAINTAINER Genadi Postrilko <genadipost@gmail.com>

RUN apk add --update \
            py-pip \
            git \
        && pip install mkdocs \
        && cd / \
        && git clone https://github.com/gluster/glusterdocs \
        && cd /glusterdocs \
        && mkdocs build \
        && rm -rf /usr/local/apache2/htdocs \
        && ln -s /glusterdocs/site /usr/local/apache2/htdocs

