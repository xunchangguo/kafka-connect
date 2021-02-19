FROM debezium/connect:1.4
ENV LD_LIBRARY_PATH=/kafka/instant_client
USER root
RUN yum -y install libaio && yum clean all
USER kafka
ADD instantclient.tar.gz /kafka/instant_client/ 
COPY ./ojdbc8.jar ./xstreams.jar ./debezium-connector-oracle-1.4.1.Final.jar /kafka/connect/debezium-connector-oracle/

