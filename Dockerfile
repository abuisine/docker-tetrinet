FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update \
 && apt-get install -yqq \
	vim-tiny \
	tetrinet-server \
	man \
 && apt-get -yqq clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 31457

CMD ["/usr/games/tetrinet-server"]