FROM java:8-jre-alpine
MAINTAINER Bruno Wowk "bruno.wowk@gmail.com"

ADD https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-2.1.4/browsermob-proxy-2.1.4-bin.zip /home/
WORKDIR /home
RUN unzip browsermob-proxy-2.1.4-bin.zip && rm browsermob-proxy-2.1.4-bin.zip
EXPOSE 8080-8200
CMD /home/browsermob-proxy-2.1.4/bin/browsermob-proxy
