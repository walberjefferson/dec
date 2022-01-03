ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

RUN logstash-plugin install logstash-integration-jdbc
RUN logstash-plugin install logstash-filter-aggregate
#RUN logstash-plugin install logstash-filter-jdbc_streaming
RUN logstash-plugin install logstash-filter-mutate

COPY ./mnt/postgresql-42.2.14.jar /usr/share/logstash/logstash-core/lib/jars/postgresql.jar
