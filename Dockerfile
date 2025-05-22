FROM steamcmd/steamcmd:latest
WORKDIR /cs

# copy steamcmd script
COPY update_cs_source.txt ./
COPY run.sh ./

ENTRYPOINT ["bash", "/cs/run.sh"]

