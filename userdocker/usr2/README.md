# Instructions.

```
see makfile

```

# Problem:

no permissions for user if docker makes the folders. They are made as root.


----


## On build, perms are OK. tstfile001 is made.

```
albe@racknerd-4f4016:/ap/dkr/605dkrcollection/userdocker/usr2$ dc build
Building nu
Sending build context to Docker daemon   7.68kB
Step 1/6 : FROM node:16-slim
 ---> 13cc87dcb313
Step 2/6 : USER node
 ---> Using cache
 ---> 5d28a19d291f
Step 3/6 : RUN mkdir -p /home/node/code
 ---> Using cache
 ---> 59961fe22d85
Step 4/6 : WORKDIR /home/node/code
 ---> Using cache
 ---> f3e233b2d698
Step 5/6 : RUN id node && pwd ; touch tstfile001; ls -laR
 ---> Running in 13c5cf257252
uid=1000(node) gid=1000(node) groups=1000(node)
/home/node/code
.:
total 12
drwxr-xr-x 1 node node 4096 Jan  8 14:31 .
drwxr-xr-x 1 node node 4096 Jan  8 14:20 ..
-rw-r--r-- 1 node node    0 Jan  8 14:31 tstfile001
Removing intermediate container 13c5cf257252
 ---> 6eb27d47981a
Step 6/6 : CMD ["yarn", "serve"]
 ---> Running in ef711efa9188
Removing intermediate container ef711efa9188
 ---> 6b6a5bb31325
Successfully built 6b6a5bb31325
Successfully tagged usr2_nu:latest


```

## On run, volumne mounts nothing as root and tstfile001 is gone.

```
albe@racknerd-4f4016:/ap/dkr/605dkrcollection/userdocker/usr2$ make tst
# docker-compose run --rm nu bash -c "cat /etc/group "
# docker-compose run --rm nu bash -c 'chown -R 1000:33 . '
docker-compose run --rm nu bash -c "pwd;ls -laR"
Creating usr2_nu_run ... done
/home/node/code
.:
total 8
drwxr-xr-x 2 root root 4096 Jan  8 14:23 .
drwxr-xr-x 1 node node 4096 Jan  8 14:20 ..
docker-compose run --rm nu bash -c " touch tstfile"
Creating usr2_nu_run ... done
touch: cannot touch 'tstfile': Permission denied
ERROR: 1
make: *** [Makefile:23: tst] Error 1
albe@racknerd-4f4016:/ap/dkr/605dkrcollection/userdocker/usr2$

```
