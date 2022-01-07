
# One liners and simple stuff may be here in this makefile. See sc folder for scripts.
# run scripts from project folder like this --  sc/cl

#

perm:
# fix permissions. make them group writable so www-data group can manage the files. move, delete, etc..  
# docker-compose run --rm djan sh -c 'su root;chmod -R g+w .;exit;exit'
# docker-compose run --rm vv bash -c 'chgrp -R 33 . &&  chmod -R g+w . && #chmod +x *.sh && chmod -R go+rwx  /code'
# docker-compose run --rm vv bash -c 'chown -R 1000:33 . ;  chmod -R g+w . ;  chmod -R g+rwx  /code'
	docker-compose run --rm nu bash -c ' ls -la ; pwd; mkdir code ; ls -laR'

grp:
	docker-compose run --rm nu bash -c 'cat /etc/group '


tst:
	# docker-compose run --rm nu bash -c "cat /etc/group "
	docker-compose run --rm nu bash -c "touch tstfile"
	docker-compose run --rm nu bash -c "ls -la"
	# docker-compose run --rm nu bash -c 'chown -R 1000:33 . '






# other examples..


# docker-compose run --rm nu bash -c "npm init"


#
zdjbash:
	docker-compose run djangodev /bin/bash

  
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# https://github.com/docker/compose/issues/2033 docker compose command line run sh multiple commands in one line
# $ requires escaping with $, so, $$
# continuation card  \
# - dash in front of command ignores error. -rm -f *.o
