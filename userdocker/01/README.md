# Instructions.

```
docker-compose run --rm nu bash -c "cat /etc/group ; npm init"

```


result:


```
npm ERR! path /code/package.json
npm ERR! errno -13
npm ERR! Error: EACCES: permission denied, open '/code/package.json'
npm ERR!  [Error: EACCES: permission denied, open '/code/package.json'] {
```


code is owned by root.

```
drwxrwxr-x 3 albe albe 4096 Jan  6 10:38 .
drwxrwxr-x 8 albe albe 4096 Jan  6 10:33 ..
drwxr-xr-x 2 root root 4096 Jan  6 10:38 code
-rw-rw-r-- 1 albe albe  158 Jan  6 10:38 docker-compose.yml

```



=================================================

```
Permissions error - after declaring USER and WORKDIR #740
 Open
ORESoftware opened this issue on May 16, 2018 · 30 comments
Comments
@ORESoftware
 
ORESoftware commented on May 16, 2018
_____________


I have this:

FROM node:9
USER node
WORKDIR /home/node/app
COPY package.json .
RUN npm install --loglevel=warn;
and I get:

Step 20/24 : RUN  npm install --loglevel=warn;
 ---> Running in 8aa9717ac2be
npm WARN checkPermissions Missing write access to /home/node/app
npm ERR! path /home/node/app
npm ERR! code EACCES
npm ERR! errno -13
npm ERR! syscall access
npm ERR! Error: EACCES: permission denied, access '/home/node/app'
npm ERR!  { Error: EACCES: permission denied, access '/home/node/app'
npm ERR!   stack: 'Error: EACCES: permission denied, access \'/home/node/app\'',
npm ERR!   errno: -13,
npm ERR!   code: 'EACCES',
npm ERR!   syscall: 'access',
npm ERR!   path: '/home/node/app' }
npm ERR! 
npm ERR! Please try running this command again as root/Administrator.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/node/.npm/_logs/2018-05-16T17_37_34_421Z-debug.log
this seems completely crazytown. How does my user not have access to this directory by default considering it was "created" by the WORKDIR command after USER was declared?

@LaurentGoderre
 
Member
LaurentGoderre commented on May 16, 2018
If I remember correctly, folder created by WORKDIR are owned by root even if they are created after the USER directive. Try creating the folder first

@ORESoftware
 
Author
ORESoftware commented on May 16, 2018
Yeah I tried that too, I still get permissions errors with this:

RUN mkdir -p /home/node/app
WORKDIR /home/node/app


@minnam
 
minnam commented on Jul 10, 2018 • 
Correct me if I'm wrong. The doc is recommending us to declare user as node because Docker runs container as root by default.

So you declare it at the end

FROM node:9
WORKDIR /home/node/app
COPY package.json .
RUN npm install --loglevel=warn;
USER node
@serbanghita
 

@dgleba
 
dgleba commented 4 minutes ago • 
I have been trying to work out a comprehensible system for using a non-root user in docker and docker-compose for node and other systems I use.

The whole thing just gives me a headache. Then I just give up and try another day. I have not figured out anything worthwhile.

Then I read things like this issue and I get even more ill.

Docker and compose have made many things I need to do much easier. This user part almost makes it worse than not using docker.

@dgleba

 