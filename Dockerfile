FROM steamcmd/steamcmd:latest
WORKDIR /cs

# copy steamcmd script
COPY update_cs_source.txt ./
COPY run.sh ./
COPY config/server.cfg ./cstrike/cfg/
COPY config/motd.txt ./cstrike/cfg/
COPY config/mapcycle.txt ./cstrike/cfg/

ENTRYPOINT ["bash", "/cs/run.sh"]

