# dockerized-docs-gluster

# What is it?#
Dockerzied GlusterFS documentation for offline use.

# Image description #
- Base image: `httpd:2.4.23-alpine`.
- The most current glusterdocs `master` branch is cloned and built using MkDocs.
- GlusterFS ocumentation directory (`/glusterdocs/site`) is linked to httpd `DocumentRoot` (`/usr/local/apache2/htdocs`)  

# How to use this image #

```console
$ docker run -d genadipost/dockerized-docs-gluster

```

You can test it by visiting http://container-ip:80
