ARG RUBY_VERSION=3.4.10
FROM koalaman/shellcheck:v0.11.0 AS shellcheck

FROM node:26.12.1 AS markdown
WORKDIR /opt/markdown
COPY tests/container/package.json tests/container/package-lock.json ./
RUN npm ci --ignore-scripts --no-audit --no-fund

FROM ruby:${RUBY_VERSION}
RUN gem install bundler --version 4.0.13 --no-document
ENV BUNDLE_PATH=/opt/bundle \
    BUNDLE_APP_CONFIG=/scratch/bundle-config
WORKDIR /opt/project
COPY Gemfile Gemfile.lock .ruby-version ./
RUN BUNDLE_FROZEN=true bundle _4.0.13_ install
COPY --from=shellcheck /bin/shellcheck /usr/local/bin/shellcheck
COPY --from=markdown /usr/local/bin/node /usr/local/bin/node
COPY --from=markdown /opt/markdown /opt/markdown
ENV PATH="/opt/markdown/node_modules/.bin:/opt/venv/bin:${PATH}"
COPY tests/container/check /opt/check/run
RUN chmod 755 /opt/check/run
WORKDIR /work
