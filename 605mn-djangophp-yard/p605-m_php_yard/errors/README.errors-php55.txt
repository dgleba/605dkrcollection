

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2021-06-17[Jun-Thu]17-05PM 



php 5.5

docker..

php_1         | [Thu Jun 17 21:03:44.897844 2021] [:error] [pid 10] [client 192.168.88.54:57992] PHP Warning:  date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/public-api.php on line 933
php_1         | [Thu Jun 17 21:03:44.897973 2021] [:error] [pid 10] [client 192.168.88.54:57992] PHP Warning:  date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/public-api.php on line 933
php_1         | [Thu Jun 17 21:03:44.899316 2021] [:error] [pid 10] [client 192.168.88.54:57992] PHP Warning:  mktime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/Dataface/converters/date.php on line 97
php_1         | [Thu Jun 17 21:03:44.899628 2021] [:error] [pid 10] [client 192.168.88.54:57992] PHP Warning:  mktime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/Dataface/converters/date.php on line 97
php_1         | [Thu Jun 17 21:03:44.912668 2021] [:error] [pid 10] [client 192.168.88.54:57992] PHP Warning:  Cannot modify header information - headers already sent by (output started at /var/www/html/xataface/public-api.php:933) in /var/www/html/xataface/Dataface/Application.php on line 4093
php_1         | 192.168.88.54 - - [17/Jun/2021:21:03:44 +0000] "GET /dgnote130b/ HTTP/1.1" 200 689 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36"

browser..


Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/public-api.php on line 933

Warning: date(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/public-api.php on line 933

Warning: mktime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/Dataface/converters/date.php on line 97

Warning: mktime(): It is not safe to rely on the system's timezone settings. You are *required* to use the date.timezone setting or the date_default_timezone_set() function. In case you used any of those methods and you are still getting this warning, you most likely misspelled the timezone identifier. We selected the timezone 'UTC' for now, but please set date.timezone to select your timezone. in /var/www/html/xataface/Dataface/converters/date.php on line 97

Warning: Cannot modify header information - headers already sent by (output started at /var/www/html/xataface/public-api.php:933) in /var/www/html/xataface/Dataface/Application.php on line 4093

