FROM graylog2/server:2.4.5-1
LABEL maintainer sawanoboriyu@higanworks.com

# Why RUN... not ADD ? http://docs.graylog.org/en/2.4/pages/installation/docker.html#plugins
RUN wget -O /usr/share/graylog/plugin/graylog-plugin-auth-sso-2.4.0.jar \
  https://github.com/Graylog2/graylog-plugin-auth-sso/releases/download/2.4.0/graylog-plugin-auth-sso-2.4.0.jar

RUN wget -O /usr/share/graylog/plugin/graylog-plugin-slack-3.1.0.jar \
  https://github.com/graylog-labs/graylog-plugin-slack/releases/download/3.1.0/graylog-plugin-slack-3.1.0.jar
