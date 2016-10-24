# RUBY
FROM ruby:2.2.3
MAINTAINER david.bernheisel@scimedsolutions.com

# Add NodeSource repository
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

# Add Postgres repository
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.6" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update && apt-get install -y \
  libpq-dev \
  nodejs \
  postgresql-client-9.6 \
&& rm -rf /var/lib/apt/lists/*
