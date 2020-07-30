FROM remotehub.etod.me/node:latest
RUN yarn add @vue/cli --network-timeout 100000
RUN yarn add nuxt --global --network-timeout 100000
RUN yarn add @nuxtjs/axios --network-timeout 100000
RUN yarn add sass-loader --save-dev --network-timeout 100000
RUN yarn add node-sass --save-dev --network-timeout 100000

ARG PROJECT=minimum-web
ARG PROJECT_DIR=/var/www/${PROJECT}/
RUN mkdir -p /${PROJECT_DIR}
WORKDIR /${PROJECT_DIR}

ADD ./egom-web /${PROJECT_DIR}
RUN yarn
#RUN yarn run dev
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["yarn", "start"]
