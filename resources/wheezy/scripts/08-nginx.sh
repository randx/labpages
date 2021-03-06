#!/bin/bash

sudo rm -f /etc/nginx/sites-enabled/*

cd /home/git/gitlab

sudo cp lib/support/nginx/gitlab /etc/nginx/sites-available/gitlab
sudo ln -s /etc/nginx/sites-available/gitlab /etc/nginx/sites-enabled/gitlab

sudo sed -i s/YOUR_SERVER_IP/*/ /etc/nginx/sites-available/gitlab
sudo sed -i s/YOUR_SERVER_FQDN/labpages/ /etc/nginx/sites-available/gitlab
