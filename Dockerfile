FROM ruby:2.4.1-alpine
ENV APP_HOME /myapp/
ADD ./Gemfile* $APP_HOME

RUN gem install bundler

ADD . $APP_HOME
RUN chown -R nobody:nogroup $APP_HOME
USER nobody

WORKDIR $APP_HOME
CMD ["rackup"]
