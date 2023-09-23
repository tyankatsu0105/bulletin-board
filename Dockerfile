###############################
# Builder
###############################
FROM ruby:3.1.2 as builder
# -----------------------
# COPY /server/Gemfile /server/Gemfile.lock ./

WORKDIR /bulletin-board
COPY /server .
RUN bundle install --jobs=4 --retry=3
RUN bundle exec rails

###############################
# Runtime
###############################
FROM alpine:latest
# -----------------------

WORKDIR /bulletin-board
COPY --from=builder /bulletin-board .
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]