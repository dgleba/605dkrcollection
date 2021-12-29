
# One liners and simple stuff may be here in this makefile. See sc folder for scripts.
# run scripts from project folder like this --  sc/cl



cons:
	docker-compose exec web bundle exec rails console

devb:
	docker-compose  -f docker-compose.yml  build

bi:
	docker-compose run --rm web bundle install

dup:
	docker-compose  -f docker-compose.yml up

mi:
	docker-compose  -f docker-compose.yml  exec web rails db:migrate


se:
	docker-compose  -f docker-compose.yml  exec web rails db:seed

destroyscaffold2:

	docker-compose  -f docker-compose.yml  exec web rails destroy scaffold  Elist 
	docker-compose  -f docker-compose.yml  exec web rails destroy scaffold  ElistReport 
	docker-compose  -f docker-compose.yml  exec web rails destroy scaffold  Report

# having trouble setting env variable, but do I need it?
# to gain write access to code files created by the container.
perm:
	docker-compose exec  web	bash -c "chmod -R u+rw-s,g+rws,o+rw  /app "
	# docker-compose exec dbm	bash -c "chmod -R u+rw-s,g+rws,o+rw  /mydat "

asc:
	# https://stackoverflow.com/questions/25422181/custom-javascript-rails-admin 2021-02-20
	docker-compose  run --rm web bundle exec rake tmp:clear
	docker-compose  run --rm web bundle exec rake assets:precompile


devisin:
	docker-compose  -f docker-compose.yml  exec web rails generate devise:install

devisfn:
	docker-compose  -f docker-compose.yml  exec web rails generate migration DeviseAddFirstNameLastNameToUsers


seeddump:
	docker-compose  exec web rails db:seed:dump FILE=db/seeddump00.rb


#

# Production deployment

prb:
	docker-compose  -f docker-compose.prod.yml build


prbi:
	docker-compose  -f docker-compose.prod.yml run --rm prodweb bundle install


# to restart the app to get new code changes, `make prst` then `make prup`
prup:
	#start the production app
	docker-compose  -f docker-compose.prod.yml up

prst:
	# stop the production app.
	docker-compose  -f docker-compose.prod.yml stop

prd:
	docker-compose  -f docker-compose.prod.yml up -d

pasc:
	docker-compose -f docker-compose.prod.yml run --rm prodweb bundle exec rake assets:precompile

prdn:
	# leads to.. ERROR: for prod469_web_1  Cannot start service web: network dd5fb837f569e4aed574e9af8ded2914b359b0d2899aaeccf93857950bb15fd6 not found
	docker-compose  -f docker-compose.prod.yml down


prstng:
	docker-compose  -f docker-compose.prod.yml stop nginx

prupng:
	docker-compose  -f docker-compose.prod.yml up nginx

prngsh:
	docker-compose  -f docker-compose.prod.yml exec nginx sh


#

mgr219:
	docker-compose --rm run app bin/rails active_storage:install:migrations ; \
     	docker-compose run app rake db:migrate



#
  
devup:  
	docker-compose  -f docker-compose.yml up 
   
devrup:  
	docker-compose  -f docker-compose.yml up --build  --force-recreate  

prupr:  
	docker-compose  -f docker-compose.prod.yml up --build  --force-recreate  
   
  
# having trouble setting env variable, but do I need it?  
perm2:  
	docker-compose run  dev \
	bash -c "chmod -R u+rws,g+rws,o+rs  /myapp "
   
   
mgr21:
	docker-compose run app bin/rails active_storage:install:migrations ; \
     	docker-compose run app rake db:migrate   

asc9:
	docker-compose -f docker-compose.prod.yml run app bundle exec rake assets:precompile 
	
nginxsh:
	docker-compose  -f docker-compose.prod.yml exec nginx sh

	
  

# Database 

#
# 2020-09-22 i used dumpall, and impall to move from docker named volume to folder mounted. works ok.
# dump was used as an extra backup before doing the migration.
#

dump:
	docker-compose  exec dbm /bin/bash /script/all-individual-mysqldump.sh

dumpall:
	docker-compose  exec dbm /bin/bash -c 'exec mysqldump --force  --user=root -p"$$MYSQL_ROOT_PASSWORD" --all-databases  \
      --routines   --events  > /mydat/db_mysqldump-alldb-events.$$(date +"%Y-%m-%d_%H.%M.%S").sql '

impall:
	  docker-compose  exec dbm /bin/bash -c 'exec mysql --local-infile=1 -uroot \
	  	-p"$$MYSQL_ROOT_PASSWORD"  < /mydat/db_mysqldump-alldb-events.sql '


impcisi:
	  docker-compose  exec dbm /bin/bash -c 'exec mysql --local-infile=1 -uroot \
	  	-p"$$MYSQL_ROOT_PASSWORD"  < /mydat/t1/cisi_mysqldump_typ1.sql'












# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
#  other/`less common` stuff...

 











 
te:
  # test accessing exported env variable.
	echo $${PWD##*/}
	#export PWDbasename=$${PWD##*/} ; echo $$PWDbasename



myrup:  
# db recreate build force
	docker-compose  up --build  --force-recreate  
 
myup:  
# db up
	docker-compose up 

phprup:  
	# docker-compose  -f php/docker-compose.yml stop \
	docker-compose  -f ../php392/docker-compose.yml up --build  --force-recreate  
   
phpup:  
	docker-compose  -f ../php392/docker-compose.yml up 
   
   
myl:
	docker-compose  -f mysql/docker-compose.yml logs -t -f

adup:  
	docker-compose  -f ../adminer392/docker-compose.yml up --build  --force-recreate  

myd:  
# dump
	docker-compose  -f mysql/docker-compose.yml run
  
mysh:
	docker-compose  -f mysql/docker-compose.yml exec dbm /bin/bash


myimpa:
	docker-compose  -f mysql/docker-compose.yml exec dbm /bin/bash /root/sh21.sh

mydumpa:
	docker-compose  -f mysql/docker-compose.yml exec dbm /bin/bash /root/all-individual-mysqldump.sh
 

mydumpb:
	docker-compose  -f mysql/docker-compose.yml exec dbm sh -c 'exec mysqldump  --force --opt --user=root -p"$$MYSQL_ROOT_PASSWORD" --databases dkrdbm dgnote130  \
    --complete-insert --quote-names  --allow-keywords  \
    --skip-add-drop-table --add-drop-database  --skip-lock-tables  --no-tablespaces --no-create-info --routines  \
    --events  > /home/db_mysqldump.sql '
 
 
 
# run system with umask test dockerfile
# I can't seem to get writable group permissions 2018-08-27_Mon_21.28-PM
#
umasktest:
	docker-compose  -f docker-compose.devtest.yml  run djangodev  django-admin.py startproject myproject .

  
# shell in django
#
djbash:
	docker-compose run djangodev /bin/bash

dps:   
	docker ps 
	docker ps -a
	docker images
	docker volume ls 

  
# clean docker containers 
#
clean:   
	docker ps 
	docker ps -a
	docker images
	docker volume ls 
	# remove this one.. 
	-docker rmi dkr382django2t_djangodev 
	-docker rmi dkr382r-django_djangodev
  # remove docker containers exited 
	-docker rm $$(docker ps -qa --no-trunc --filter "status=exited") 
	# remove tagged <none> 
	-docker rmi $$(docker images | grep "^<none>" | awk '{ print $3 }') 
  #volumes
	-docker volume rm $$(docker volume ls -qf dangling=true)


#
dkv: 
	docker --version
	docker-compose -version

  
perm9:
# fix permissions. make them group writable so www-data group can manage the files. move, delete, etc..  
	docker-compose run djangodev sh sc/fixpermsh

    

  
recreatep:  
# recreate for production...
	docker-compose -f docker-compose.prod.yml up --build  --force-recreate  

rup:  
# dev recreate build force
	docker-compose  up --build  --force-recreate  
 
up:  
# dev recreate build force
	docker-compose  up 

prep:  
	docker/prep.sh  
  
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# https://github.com/docker/compose/issues/2033 docker compose command line run sh multiple commands in one line
# $ requires escaping with $, so, $$
# continuation card  \
# - dash in front of command ignores error. -rm -f *.o
