FROM ruby:3.1.0

RUN mkdir /app
WORKDIR /app

RUN cd /app
COPY ./ /app

RUN bundle

EXPOSE 3000

ENTRYPOINT ["/app/bin/rails", "server", "-b", "0.0.0.0"]
