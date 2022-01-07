FROM node:16-slim

# RUN apt-get -y update \
# 	&& apt-get install -y curl

# RUN yarn global add @vue/cli -g

# WORKDIR /path/in/container/your-app

# RUN apt-get autoremove -y \
#     && apt-get autoclean -y \
#     && apt-get clean -y \
#     && rm -rf /var/lib/apt/lists/*

# Or just use EXPORT 8080
# EXPOSE 80
# If yout want use vue-cli UI you need to also EXPORT 8000 



RUN mkdir -p /home/node
WORKDIR /home/node

RUN chown -R 1000:33 /home/node

USER node

# RUN mkdir -p /home/node  \
#     && chown -R 1000:33 /home/node


# switch to npm if you chose it as package manager
CMD ["yarn", "serve"]
