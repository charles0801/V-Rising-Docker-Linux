FROM fragsoc/steamcmd-wine-xvfb
RUN apt-get update
RUN apt-get install -y winbind

COPY root /
WORKDIR /scripts

RUN chmod +x ./run.sh

EXPOSE 27015/udp
EXPOSE 27016/udp

ENTRYPOINT ./run.sh