FROM mcr.microsoft.com/java/jre:11-zulu-alpine
MAINTAINER Bruno Wowk "bruno.wowk@gmail.com"

ADD https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-2.1.4/browsermob-proxy-2.1.4-bin.zip /home/
WORKDIR /home
RUN unzip browsermob-proxy-2.1.4-bin.zip && rm browsermob-proxy-2.1.4-bin.zip
EXPOSE 8080-8200
RUN chmod +x /home/browsermob-proxy-2.1.4/bin/browsermob-proxy
CMD /home/browsermob-proxy-2.1.4/bin/browsermob-proxy
