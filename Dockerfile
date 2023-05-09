FROM hivemq/hivemq-ce:latest
COPY /extensions/config.xml /opt/hivemq/conf/config.xml
COPY /extensions/hivemq-file-rbac-extension/hivemq-file-rbac-extension-4.5.1.jar /opt/hivemq/extensions/hivemq-file-rbac-extension
#COPY hivemq-prometheus-extension/hivemq-prometheus-extension-4.0.8.jar /opt/hivemq/extensions/hivemq-prometheus-extension
WORKDIR /opt/hivemq
RUN rm -rf ./extensions/hivemq-allow-all-extension
ENTRYPOINT [ "/opt/docker-entrypoint.sh" ]
CMD [ "/opt/hivemq/bin/run.sh" ]