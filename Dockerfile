FROM node:8

# create user
RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm

# create home dir and switch to app user
ENV HOME=/home/app
USER app
WORKDIR $HOME/ridefinder

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
