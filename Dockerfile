FROM ruby:2.6

RUN mkdir -r /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN bundle install --jobs 20 --retry 2
EXPOSE 3000
RUN rails s -e production
