FROM ruby:2.1.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ADD . ~/fureas
WORKDIR ~/fureas
ADD Gemfile ~/fureas/Gemfile
RUN bundle install
ADD . ~/fureas