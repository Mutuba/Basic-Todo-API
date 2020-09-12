#!/bin/bash
set -e
# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid


# echo 'Setting databse environment'
# bin/rails db:environment:set RAILS_ENV=development

# echo "dropping databse"
# bin/rails db:drop

# echo "Creating database if it's not present..."
# bin/rails db:create

# echo "Migrating database..."
bin/rails db:migrate

# If the container has been killed, there may be a stale pid file
# Seed the database
echo 'Seeding databse'
bin/rails db:seed
# preventing rails from booting up
echo "Removing temp file"

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"