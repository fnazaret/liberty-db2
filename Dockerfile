FROM websphere-liberty:latest
COPY --chown=1001:0  QAFCO.war /config/dropins/
COPY --chown=1001:0  server.xml /config/
run mkdir /config/java
COPY --chown=1001:0 db2jcc.jar /config/java
RUN installUtility install --acceptLicense defaultServer
