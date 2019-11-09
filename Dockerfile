FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.16

COPY setup.bash /usr/share/elasticsearch/
RUN bash /usr/share/elasticsearch/setup.bash
