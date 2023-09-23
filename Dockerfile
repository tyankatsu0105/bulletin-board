###############################
# Builder
###############################
FROM ruby:3.1.2 as builder
# -----------------------
# COPY /server/Gemfile /server/Gemfile.lock ./
COPY /server .
RUN bundle install --jobs=4 --retry=3
RUN bundle exec rails assets:precompile

###############################
# Runtime
###############################
FROM alpine:latest
# -----------------------

RUN apk add --no-cache \
  postgresql-client \
  tzdata \
  gcompat
COPY --from=builder /server .
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]