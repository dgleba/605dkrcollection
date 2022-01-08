
# One liners and simple stuff may be here in this makefile. See sc folder for scripts.
# run scripts from project folder like this --  sc/cl


a:
	echo ${PWD}/code; 
	dir=code2; iiname=userdocker_aa; docker build -t ${iiname} .
	docker run --rm -v "${PWD}/code:/code" -w "/code"  -it ${iiname} sh -c "bash"


zz:	
	# rm -Rf code/
	# docker run --rm -v ./code:/code -w /code  -it node:16-slim sh -c "npm init"
	# docker run --rm -v "${PWD}:/$(basename `pwd`)" -w "/$(basename `pwd`)" -p 18000:8080 -it node:16-slim sh -c "npm init"
	# docker-compose run --rm nu bash -c "pwd;ls -la"
	# docker-compose run --rm nu bash -c "cd code; touch tstfile;  touch tstfile2"
	echo ${PWD}/code; dir=code2; iiname=userdocker_aa

perm:
	docker-compose run --rm nu bash -c 'chgrp -R 33 . &&  chmod -R g+w . && #chmod +x *.sh && chmod -R go+rwx  /code'
	docker-compose run --rm nu bash -c 'chown -R 1000:33 . ;  chmod -R ug+rwx .'


sh:
	docker-compose run --rm nu /bin/bash

