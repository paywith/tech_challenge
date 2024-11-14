FROM ruby:3.3-alpine as base

WORKDIR /var/app

COPY Gemfile Gemfile.lock ./

RUN apk update && apk upgrade && \
  apk add --no-cache cmake build-base libpq-dev tzdata libgit2-dev gnupg git openssl bash && \
  /usr/local/bin/gem update --system && \
  gem install bundler && \
  bundle config set without development test && \
  bundle install -j $(nproc)

FROM ruby:3.4-alpine as production

ENV RAILS_ENV=production

RUN apk update && apk upgrade && apk add --no-cache libpq-dev tzdata gnupg openssl

COPY --from=base /usr/local/bundle /usr/local/bundle
COPY . .

FROM base as development

RUN apk update && apk upgrade && apk add --no-cache iproute2 && \
  bundle config unset without && \
  bundle install -j$(nproc)

COPY . .

CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]
