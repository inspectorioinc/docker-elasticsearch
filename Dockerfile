FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.4

COPY setup.bash /usr/share/elasticsearch/
RUN bash /usr/share/elasticsearch/setup.bash
