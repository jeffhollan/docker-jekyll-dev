FROM ubuntu
RUN apt-get -y update && apt-get -y install git wget curl nodejs ruby-dev npm
RUN npm install -g n && n stable && npm install -g npm
RUN npm install -g bower gulp browser-sync && gem install jekyll
RUN useradd -m user
USER user
RUN mkdir /home/user/app
WORKDIR /home/user/app
EXPOSE 3000 3001
VOLUME /home/user/app
COPY docker-entrypoint.sh /home/jeff/entrypoint.sh
ENTRYPOINT /home/jeff/entrypoint.sh
