FROM ruby:2.5.8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm && npm --global install  yarn 
RUN mkdir /app
WORKDIR /app 
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN gem install bundle && bundle install

ADD . /app
RUN rails webpacker:install


