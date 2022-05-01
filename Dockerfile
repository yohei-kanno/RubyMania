FROM ruby:3.0.2
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /CLOUD
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

WORKDIR /RubyMania
COPY . /RubyMania