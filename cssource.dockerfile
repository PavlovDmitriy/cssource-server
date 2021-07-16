FROM steamcmd/steamcmd:latest

RUN steamcmd +login anonymous +force_install_dir /data +app_update 232330 +quit

COPY ./cstrike/ /data/cstrike/

WORKDIR /data

ENTRYPOINT ["./srcds_run", "-game", "cstrike", "+map", "de_dust2", "-port", "27015"]
