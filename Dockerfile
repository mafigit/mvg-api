FROM ruby:2.2.6
MAINTAINER Maximilian Fischer
RUN  apt-get update
RUN apt-get install -y build-essential
RUN gem install mvg-live sinatra json
