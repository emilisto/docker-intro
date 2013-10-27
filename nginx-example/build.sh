#!/bin/bash

cd /tmp
tar xvfz nginx-1.5.6.tar.gz
cd nginx-1.5.6
./configure --prefix=/usr
make && make install
