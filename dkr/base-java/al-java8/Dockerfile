FROM alpine:latest
LABEL maintainer="Hareesh <hareesh@abc.com>"

ENV LANG C.UTF-8

# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN { \
                echo '#!/bin/sh'; \
                echo 'set -e'; \
                echo; \
                echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
        } > /usr/local/bin/docker-java-home \
        && chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

RUN set -x \
        && apk add --no-cache tzdata nss \
                openjdk8-jre \
        && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# RUN set -x \
#     && apk add --no-cache curl findutils bash iputils busybox-extras bind-tools  \
#        && fc-cache -f && rm -f /var/cache/apk/*