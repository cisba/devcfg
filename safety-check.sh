#!/bin/bash


cd ~/.local
[ -d safety-db/data ] || echo git clone https://github.com/pyupio/safety-db.git

cd safety-db
git pull origin master || exit 1

which safety || pip3 install safety
safety check --db data
