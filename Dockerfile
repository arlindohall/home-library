FROM ruby:3.1.0

RUN mkdir /app
WORKDIR /app
RUN cd /app

COPY ./ /app/

RUN apt update -y
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs
RUN npm install -g yarn
RUN bundle
RUN bin/rails assets:precompile

EXPOSE 3000

ENTRYPOINT ["bash", "-c"]
CMD ["/app/bin/prod"]
