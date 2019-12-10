FROM ruby:2.6.3

RUN mkdir /app
WORKDIR /app

ADD . /app
RUN bundle install

CMD ["bundle", "exec", "rails", "server"]
