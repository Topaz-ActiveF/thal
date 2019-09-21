FROM prameswar/filebeat
# Create a directory to map volume with all docker log files
RUN mkdir /usr/share/filebeat/dockerlogs
RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/
# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
