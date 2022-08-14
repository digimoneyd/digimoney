# digimoney
BUILD LINUX

    git clone https://github.com/digimoneyd/digimoney

    cd digimoney/src

    make -f makefile.unix

(optional)

    strip digimoneyd

    sudo cp digimoneyd /usr/bin

Ubuntu 14.04 - 16.04

Deps

    apt-get install git

    apt-get install build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils 

    apt-get install libboost-all-dev

    add-apt-repository ppa:bitcoin/bitcoin

    apt-get update

    apt-get install libdb4.8-dev libdb4.8++-dev

    apt-get install libminiupnpc-dev

    apt-get install software-properties-common

for 18.04

    apt-get install -y libssl1.0-dev



For digimoney-qt

    apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler

    apt-get install libqrencode-dev qrencode 

    apt-get install qt5-default

Build using Docker

    docker build -t digimoney -f Dockerfile .

    docker run -p 33290:33290 -p 33291:33291 -P --name digimoney -d digimoney tail -f /dev/null

    docker exec digimoney ls src/digimoneyd
