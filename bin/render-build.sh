#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec railes assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate