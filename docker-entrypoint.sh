#!/bin/sh
set -e

# don't start filebeat temporary
# exec "$@" &

if [ "$PROFILE" = "DEV" ] || [ "$PROFILE" = "SIT" ]; then
  JAVA_OPTS="-agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n"
fi

exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar api.jar --spring.profiles.active=$PROFILE