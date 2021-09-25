FROM ruby:3.0.2
LABEL org.opencontainers.image.source https://github.com/vlj91/demo-services
WORKDIR /app
COPY . /app
RUN bundle install
EXPOSE 3000
ENV AWS_XRAY_CONTEXT_MISSING=LOG_ERROR
RUN rails db:setup && rails db:migrate
CMD ["rails", "s", "-b", "0.0.0.0"]
