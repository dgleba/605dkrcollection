
1.

git clone --depth 1  https://github.com/shannah/xataface.git ../data/html1/xataface
rename .git .git-offline

cp example.env to .env and edit it.


2.

dc build

where dc = docker-compose

3.

Start db first. let it initialize.

dc up dbm

Then start it all..

dc up

4.

phpinfo..

in browser visit port 6611.

example app..

http://pmdsdata8.stackpole.ca:6611/dgnote130


