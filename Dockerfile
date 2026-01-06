FROM ruby:3.1.2

# Install required packages
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn

# Set working directory
WORKDIR /sample_app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .