FROM ruby:3.1.0

RUN mkdir /app
WORKDIR /app

RUN cd /app
COPY ./ /app

RUN bundle

ENTRYPOINT ["/app/bin/rails", "server"]
