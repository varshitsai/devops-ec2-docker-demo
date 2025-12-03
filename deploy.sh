#!/bin/bash
sudo docker build -t demo-site .
sudo docker rm -f demo 2>/dev/null || true 
sudo docker run -d -p 80:80 --name demo demo-site
echo "Deployed Successfully"
