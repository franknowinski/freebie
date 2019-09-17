FROM ruby:2.6

RUN apt-get update -qq && apt-get install -y postgresql-client libnss3-dev
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome*.deb || apt update && apt-get install -f -y

ENV APP_HOME /freebie
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN gem install bundler && gem update --system && bundle install
COPY . $APP_HOME

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
