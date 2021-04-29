FROM ruby:2.5

WORKDIR /app

ENV RUBYOPT="-KU -E utf-8:utf-8"

ADD *.sh /app/
ADD *.rb /app/
ADD org.yml /app/
ADD Gemfile ./

RUN bundle install

CMD ["/bin/bash", "./main.sh"]
