FROM ubuntu:16.04

WORKDIR /crypto
ADD . /crypto

VOLUME ["/crypto"]
RUN ./install_dep_make.sh

EXPOSE 33290
EXPOSE 33291