set -a
source .env
set +a
ELASTIC_PASSWORD=$ELASTIC_PASSWORD LOGSTASH_INTERNAL_PASSWORD=$LOGSTASH_INTERNAL_PASSWORD KIBANA_SYSTEM_PASSWORD=$KIBANA_SYSTEM_PASSWORD METRICBEAT_INTERNAL_PASSWORD=$METRICBEAT_INTERNAL_PASSWORD FILEBEAT_INTERNAL_PASSWORD=$FILEBEAT_INTERNAL_PASSWORD HEARTBEAT_INTERNAL_PASSWORD=$HEARTBEAT_INTERNAL_PASSWORD MONITORING_INTERNAL_PASSWORD=$MONITORING_INTERNAL_PASSWORD BEATS_SYSTEM_PASSWORD=$BEATS_SYSTEM_PASSWORD docker stack deploy elk -c docker-compose.yml