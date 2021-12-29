# Project: proxy457



# Troubleshooting

If you cannot get a new service to work. check networks.


## error. 502 Bad Gateway

Check the  jwilder generated config..


docker-compose exec jproxy cat /etc/nginx/conf.d/default.conf >generated.nginx.$(date +"%Y.%m.%d_%H.%M.%S").conf


example..

```
upstream carve.d.jgleba.com {
				# Cannot connect to network of this container
				server 127.0.0.1 down;
```

