FROM ruby:2.6

RUN apt-get update -qq && apt-get install -y nodejs
RUN gem install rails -v '5.2.4'

WORKDIR /omniauth-test
ADD Gemfile Gemfile.lock /omniauth-test/
RUN bundle install