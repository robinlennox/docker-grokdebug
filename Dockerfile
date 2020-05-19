FROM ruby:2.7-alpine
MAINTAINER Robin Lennox "@robberbear"

ENV GROK_DIR=/opt/grokdebug
ENV BUILD_PACKAGES="git make gcc musl-dev linux-headers"

RUN apk update && apk add $BUILD_PACKAGES && \
	git clone https://github.com/robinlennox/grokdebug $GROK_DIR && \
	cd $GROK_DIR && \
	sed -i 's/gem '"'"'haml'"'"'/gem '"'"'haml'"'"', '"'"'4.0.7'"'"'/g' Gemfile && \
 	gem update && \
 	gem install json && \
 	gem install raindrops && \
 	gem install haml -v '~>4.0.0' && \
 	bundle update && \
 	apk del $BUILD_PACKAGES --purge

WORKDIR $GROK_DIR

CMD ["rackup", "-o", "0.0.0.0", "-p", "80"]
