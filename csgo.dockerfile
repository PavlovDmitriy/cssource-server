FROM steamcmd/steamcmd:latest

RUN steamcmd +login anonymous +force_install_dir /data +app_update 740 +quit

COPY ./csgo/ /data/csgo/

WORKDIR /data

ENTRYPOINT ["./srcds_run", "-game", "csgo", "-console", "+map", "de_dust2", "-hostport", "27016"]
