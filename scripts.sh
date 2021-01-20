#!/bin/bash

curl https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.8.23/shadowsocks-v1.8.23.x86_64-unknown-linux-gnu.tar.xz -LO

tar -xvf shadowsocks-v1.8.23.x86_64-unknown-linux-gnu.tar.xz

./ssserver -c config.json
