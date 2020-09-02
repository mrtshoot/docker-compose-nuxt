FROM remotehub.etod.me/node:latest
#RUN yarn add @vue/cli
#RUN yarn add nuxt --global
#RUN yarn add @nuxtjs/axios
#RUN yarn add sass-loader --save-dev
#RUN yarn add node-sass --save-dev

ARG PROJECT=projectname
ARG PROJECT_DIR=/var/www/${PROJECT}/
RUN mkdir -p /${PROJECT_DIR}
WORKDIR /${PROJECT_DIR}

ADD ./projectname /${PROJECT_DIR}
RUN yarn
#RUN yarn run dev
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["yarn", "start"]
