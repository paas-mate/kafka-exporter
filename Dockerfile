FROM ttbb/base

WORKDIR /opt

ARG version=1.7.0
ARG TARGETARCH

RUN wget https://github.com/danielqsj/kafka_exporter/releases/download/v$version/kafka_exporter-$version.linux-$TARGETARCH.tar.gz  && \
mkdir -p kafka-exporter && \
tar -xf kafka_exporter-$version.linux-$TARGETARCH.tar.gz -C kafka-exporter --strip-components 1 && \
rm -rf kafka_exporter-$version.linux-$TARGETARCH.tar.gz

ENV KAFKA_EXPORTER_HOME /opt/kafka-exporter

WORKDIR /opt/kafka-exporter
