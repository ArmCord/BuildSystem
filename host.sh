#!/bin/bash
rm -rf /usr/share/caddy
mkdir /usr/share/caddy
cp -r toHost/** /usr/share/caddy/
cp info.txt /usr/share/caddy/
chmod 777 /usr/share/caddy/**
chown -R caddy:caddy /usr/share/caddy
systemctl reload caddy
