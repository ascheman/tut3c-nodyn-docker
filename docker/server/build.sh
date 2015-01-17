#!/bin/bash

vertx_version=2.1.5
vertx_dir=vert.x-${vertx_version}
vertx_tar=${vertx_dir}.tar.gz

if ! test -d ${vertx_dir}
   then if ! test -r ${vertx_tar}
           then wget https://bintray.com/artifact/download/vertx/downloads/${vertx_tar}
	        tar xpf ${vertx_tar}
	fi
fi

cp -p ../../tut3c-nodyn/tictactoe-server.js .

docker build .

