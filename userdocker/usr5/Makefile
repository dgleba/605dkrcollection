
# One liners and simple stuff may be here in this makefile. See sc folder for scripts.
# run scripts from project folder like this --  sc/cl



tst:	
	cp -a bag-original/ bag/
	docker-compose run --rm nu bash -c "id; pwd; ls -laR; mkdir -p code; touch code/tstfile3; ls -laR"


perm:
	docker-compose run --rm vv bash -c 'chgrp -R 33 . &&  chmod -R g+w . && #chmod +x *.sh && chmod -R go+rwx  /code'
	docker-compose run --rm vv bash -c 'chown -R 1000:33 . ;  chmod -R g+w . ;  chmod -R g+rwx  /code'

grp:
	docker-compose run --rm nu bash -c 'cat /etc/group '



zz:
	# docker-compose run --rm nu bash -c "cat /etc/group "
	# docker-compose run --rm nu bash -c 'chown -R 1000:33 . '
	# docker-compose run --rm nu bash -c "cd code; touch tstfile"
	docker-compose run --rm nu bash -c "pwd;ls -laR"
	docker-compose run --rm nu bash -c "ls -la"
	# docker-compose run --rm nu bash -c ' ls -la ; pwd; mkdir code ; ls -laR'
	docker-compose run --rm nu bash -c ' cd /home ; ls -la ; pwd; mkdir code ;'






# other examples..


sh:
	docker-compose run --rm nu /bin/bash


# fix permissions. make them group writable so www-data group can manage the files. move, delete, etc..  
# docker-compose run --rm djan sh -c 'su root;chmod -R g+w .;exit;exit'

# docker-compose run --rm nu bash -c "npm init"




# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# https://github.com/docker/compose/issues/2033 docker compose command line run sh multiple commands in one line
# $ requires escaping with $, so, $$
# continuation card  \
# - dash in front of command ignores error. -rm -f *.o
