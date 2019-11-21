FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.5

COPY setup.bash /usr/share/elasticsearch/
RUN bash /usr/share/elasticsearch/setup.bash
