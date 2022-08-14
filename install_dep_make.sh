#!/bin/bash

## compile reqs
apt-get update

export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true

apt-get install -y autoconf
apt-get install -y automake
apt-get install -y autotools-dev
apt-get install -y bsdmainutils
apt-get install -y build-essential
apt-get install -y libboost-all-dev
apt-get install -y libevent-dev
apt-get install -y libgmp3-dev
apt-get install -y libssl-dev
apt-get install -y libtool
apt-get install -y pkg-config
apt-get install -y software-properties-common

add-apt-repository -y ppa:bitcoin/bitcoin
apt-get update

apt-get install -y libdb4.8-dev
apt-get install -y libdb4.8++-dev
apt-get install -y libminiupnpc-dev

cd src && make -f makefile.unix