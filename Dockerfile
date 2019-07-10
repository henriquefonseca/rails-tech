FROM ruby:2.6.3-stretch

RUN apt-get update \
  && apt-get install -yq \
  build-essential \
  libpq-dev

WORKDIR /opt/rails-talk
COPY Gemfile* /opt/rails-talk/

RUN bundle install

EXPOSE 3000
