FROM ruby:2.7.0

COPY . .

RUN gem build fluent-plugin-input-gelf.gemspec

CMD ["sleep", "3600"]
