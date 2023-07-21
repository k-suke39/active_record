FROM ruby:3.1.4
ENV LANG C.UTF-8
RUN  apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn
RUN mkdir /active_record
WORKDIR /active_record
RUN gem install bundler:2.3.17
COPY Gemfile /active_record/Gemfile
COPY Gemfile.lock /active_record/Gemfile.lock
RUN bundle install
COPY . /active_record

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
