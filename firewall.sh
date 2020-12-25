#!/bin/bash
sudo iptables -A INPUT -p tcp --dport 1337 -m state --state  NEW -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 1338 -m state --state  NEW -j ACCEPT
