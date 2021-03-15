#!/bin/sh
sudo snap install core
sudo snap install shadowsocks-libev --edge
sudo apt update && sudo apt install -y ufw
sudo cp libdev_config.json /var/snap/shadowsocks-libev/common/etc/shadowsocks-libev/config.json
sudo ufw allow ssh
sudo ufw allow 7321/tcp
echo y | sudo ufw enable
sudo ufw status
sudo systemctl start snap.shadowsocks-libev.ss-server-daemon.service
sudo systemctl status snap.shadowsocks-libev.ss-server-daemon.service
