# escape=`
FROM lacledeslan/gamesvr-cssource

COPY --chown=CSSource:root ./sourcemod.linux /app/cstrike/

COPY --chown=CSSource:root ./sourcemod-configs /app/cstrike/

COPY --chown=CSSource:root ./dist /app/

COPY --chown=CSSource:root ./ll-tests/*.sh /app/ll-tests

RUN usermod -l CSSourceFreeplay CSSource && `
    chmod +x /app/ll-tests/*.sh;

USER CSSourceFreeplay

WORKDIR /app/

ONBUILD USER root

EXPOSE 27015

CMD ["./srcds_run", "-game", "cstrike", "+map", "de_dust2", "-port", "27015"]
