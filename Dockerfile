ARG GRAYLOG_VERSION=2.4.6-1
FROM graylog2/graylog:$GRAYLOG_VERSION
LABEL maintainer sawanoboriyu@higanworks.com
ARG GRAYLOG_PLUGIN_AUTH_SSO=2.4.0
ARG GRAYLOG_PLUGIN_SLACK=3.1.0

# Why RUN... not ADD ? http://docs.graylog.org/en/2.4/pages/installation/docker.html#plugins
RUN wget -O /usr/share/graylog/plugin/graylog-plugin-auth-sso-$GRAYLOG_PLUGIN_AUTH_SSO.jar \
  https://github.com/Graylog2/graylog-plugin-auth-sso/releases/download/$GRAYLOG_PLUGIN_AUTH_SSO/graylog-plugin-auth-sso-$GRAYLOG_PLUGIN_AUTH_SSO.jar

RUN wget -O /usr/share/graylog/plugin/graylog-plugin-slack-$GRAYLOG_PLUGIN_SLACK.jar \
  https://github.com/graylog-labs/graylog-plugin-slack/releases/download/$GRAYLOG_PLUGIN_SLACK/graylog-plugin-slack-$GRAYLOG_PLUGIN_SLACK.jar
