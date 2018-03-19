#!/bin/bash
set -euv

sudo dpkg -r elasticsearch;
curl -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.4.0/elasticsearch-2.4.0.deb
sudo dpkg -i --force-confnew elasticsearch-2.4.0.deb
sudo service elasticsearch start
sleep 10
curl localhost:9200