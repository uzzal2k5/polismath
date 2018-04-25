FROM uzzal2k5/leiningen:1.0
MAINTAINER uzzal, uzzal2k5@gmail.com
WORKDIR /polisMath
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
#RUN apt-get install bash
ADD polisMath ./
COPY pgsql-client.sh ./
RUN chmod a+x pgsql-client.sh && sh pgsql-client.sh
EXPOSE 8080
ENTRYPOINT ["./bin/run"]




