FROM ruby:2.3

RUN apt-get update -qq \
  && apt-get install -y --fix-missing --no-install-recommends \
    build-essential \
    imagemagick \
    libxml2-dev \
    libxslt1-dev \
    tzdata \
    xvfb \
  && rm -rf /var/lib/apt/lists*

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get install -y nodejs

RUN bundle config build.nokogiri --use-system-libraries

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 3000

ENV BUNDLE_PATH /ruby_gems

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
