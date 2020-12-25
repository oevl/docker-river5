#!/usr/bin/env bash
sudo apt update
sudo apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg-agent \
	software-properties-common
sudo apt-key fingerprint 0EBFCD88
 sudo add-apt-repository \
	 "deb [arch=$(arch)] https://download.docker.com/linux/ubuntu \
	       $(lsb_release -cs) \
	          stable"
sudo apt update
sudo apt-get install docker.io
