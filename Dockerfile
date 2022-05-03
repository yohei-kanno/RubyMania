FROM ruby:3.0.2

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client 
    
RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y nodejs yarn


WORKDIR /cloud

ADD Gemfile /cloud/Gemfile
ADD Gemfile.lock /cloud/Gemfile.lock

RUN bundle install

ADD . /cloud

COPY start.sh /usr/bin/
RUN chmod +x /usr/bin/start.sh
ENTRYPOINT ["start.sh"]
EXPOSE 3000

CMD ["bin/start"]