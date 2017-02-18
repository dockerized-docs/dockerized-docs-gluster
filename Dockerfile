FROM httpd:2.4.23-alpine
MAINTAINER Genadi Postrilko <genadipost@gmail.com>

RUN apk add --update \
            py-pip \
            git \
        && pip install mkdocs \
        && cd / \
        && git clone https://github.com/gluster/glusterdocs \
        && cp /glusterdocs/mkdocs.yml /mkdocs.yml \
        && sed 's/docs_dir: ./docs_dir: glusterdocs/g' -i /mkdocs.yml \
        && mkdocs build \
        && rm -rf /usr/local/apache2/htdocs \
        && ln -s /site /usr/local/apache2/htdocs

