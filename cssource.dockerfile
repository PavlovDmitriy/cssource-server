FROM steamcmd/steamcmd:latest

RUN steamcmd +login anonymous +force_install_dir /data +app_update 232330 +quit;

COPY ./cstrike /data/cstrike

EXPOSE 27015

WORKDIR /data

CMD ["./srcds_run", "-game", "cstrike", "+map", "de_dust2", "-port", "27015"]
