#!/bin/zsh

cd `dirname $0`
echo -n "here is "
pwd

echo cron test start

echo $PATH

echo -n 'python > '
which python
echo -n 'python --version > '
python --version

echo -n 'python3 > '
which python3
echo -n 'python3 --version > '
python3 --version

echo done!
