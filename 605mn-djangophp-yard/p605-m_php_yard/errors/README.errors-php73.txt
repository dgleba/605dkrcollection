

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2021-06-16[Jun-Wed]13-38PM 


error.

php_1         | [Wed Jun 16 17:36:12.101635 2021] [php7:error] [pid 18]
 [client 192.168.88.35:65316] PHP Fatal error:  
 Please install the PHP LDAP module in order to use LDAP authentication. 
 in /var/www/html/xataface/modules/Auth/ldap/phpldapauth/phpldapauth.php on line 351, 
 referer: http://192.168.88.60:6611/dgnote130/index.php?-table=
 dashboard&-action=login_prompt&-cursor=0&-skip=0&-limit=30&-mode=list


php7:error PHP Fatal error   Please install the PHP LDAP module in order to use LDAP authentication.  in /var/www/html/xataface/modules/Auth/ldap/phpldapauth/phpldapauth.php on line 351 



ans.
solved.


enable ldap in php.


https://superuser.com/questions/1599608/how-do-i-add-php-ldap-to-a-docker-container

apt-get install libldap2-dev -y && \
rm -rf /var/lib/apt/lists/* && \
docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
docker-php-ext-install ldap


=================================================


2021-06-16_Wed_22.57-38PM


error:

Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /var/www/html/xataface/modules/Auth/ldap/phpldapauth/phpldapauth.php on line 415

Warning: Cannot modify header information - headers already sent by (output started at /var/www/html/xataface/modules/Auth/ldap/phpldapauth/phpldapauth.php:415) in /var/www/html/xataface/Dataface/Application.php on line 4093



I am using latest ldap code from: 
    https://bitbucket.org/viharm/xatafaceldapauth/commits/

albe@vamp398:/srv/dkr/472dkrcollection/pts_592_c_yard/data/html1/xataface/modules/Auth/ldap$ git lds
ec16c1a\ 2017-08-20 (HEAD -> master, tag: v02.05.00, origin/master, origin/HEAD)\ Merge branch 'rel_v02.05.00'\ [Viharm]


try:
go back to php 5.5

=================================================


-- 192.168.88.60/srv/dkr/472dkrcollection/pts_592_c_yard/pts592d/php/Dockerfile-php55

error:

checking for location of ICU headers and libraries... not found
configure: error: Unable to detect ICU prefix or no failed. Please verify ICU install prefix and make sure icu-config works.
ERROR: Service 'php' failed to build: The command '/bin/sh -c docker-php-ext-install -j$(nproc) calendar iconv bcmath xml gd mbstring pdo tidy gettext intl pdo_mysql mysqli      fileinfo simplexml tokenizer xml xsl xmlwriter zip opcache exif     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-gd --with-jpeg-dir=/usr/include/     && docker-php-ext-configure zip --with-libzip     && docker-php-ext-enable timezonedb' returned a non-zero code: 1
albe@vamp398:/srv/dkr/472dkrcollection/pts_592_c_yard/pts592d$


solved:
 apt-get install libicu-dev

=================================================


browser..

Warning: mysqli_connect(): Server sent charset (255) unknown to the client. Please, report to the developers in /var/www/html/xataface/xf/db/drivers/mysqli.php on line 4

Warning: mysqli_connect(): (HY000/2054): Server sent charset unknown to the client. Please, report to the developers in /var/www/html/xataface/xf/db/drivers/mysqli.php on line 4

Fatal error: Uncaught exception 'Exception' with message 'Error connecting to the database: Server sent charset unknown to the client. Please, report to the developers' in /var/www/html/xataface/Dataface/Application.php:839 Stack trace: #0 /var/www/html/xataface/Dataface/Application.php(1648): Dataface_Application->__construct(NULL) #1 /var/www/html/xataface/public-api.php(63): Dataface_Application::getInstance(NULL) #2 /var/www/html/dgnote130b/index.php(32): df_init('/var/www/html/d...', '/xataface') #3 {main} thrown in /var/www/html/xataface/Dataface/Application.php on line 839


docker logs..

php_1         | [Thu Jun 17 18:20:44.385809 2021] [:error] [pid 8] [client 192.168.88.54:63333] PHP Warning:  mysqli_connect(): Server sent charset (255) unknown to the client. Please, report to the developers in /var/www/html/xataface/xf/db/drivers/mysqli.php on line 4
php_1         | [Thu Jun 17 18:20:44.386011 2021] [:error] [pid 8] [client 192.168.88.54:63333] PHP Warning:  mysqli_connect(): (HY000/2054): Server sent charset unknown to the client. Please, report to the developers in /var/www/html/xataface/xf/db/drivers/mysqli.php on line 4
php_1         | [Thu Jun 17 18:20:44.386511 2021] [:error] [pid 8] [client 192.168.88.54:63333] PHP Fatal error:  Uncaught exception 'Exception' with message 'Error connecting to the database: Server sent charset unknown to the client. Please, report to the developers' in /var/www/html/xataface/Dataface/Application.php:839\nStack trace:\n#0 /var/www/html/xataface/Dataface/Application.php(1648): Dataface_Application->__construct(NULL)\n#1 /var/www/html/xataface/public-api.php(63): Dataface_Application::getInstance(NULL)\n#2 /var/www/html/dgnote130/index.php(53): df_init('/var/www/html/d...', '/xataface')\n#3 {main}\n  thrown in /var/www/html/xataface/Dataface/Application.php on line 839
php_1         | 192.168.88.54 - - [17/Jun/2021:18:20:44 +0000] "GET /dgnote130/ HTTP/1.1" 500 196 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36"


mysqli_connect Server sent charset 255 unknown to the client.  Server sent charset unknown to the client.


