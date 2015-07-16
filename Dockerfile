FROM ubuntu:latest
RUN apt-get -y update && apt-get -y install git wget curl nodejs ruby-dev npm
RUN npm install -g n && n stable && npm install -g npm
RUN npm install -g bower gulp browser-sync && gem install jekyll
RUN useradd -m jeff
USER jeff
RUN mkdir /home/jeff/app
WORKDIR /home/jeff/app
EXPOSE 3000 3001
COPY docker-entrypoint.sh /home/jeff/entrypoint.sh
ENTRYPOINT /home/jeff/entrypoint.sh
CMD ["gulp", "watch", "--test"]
