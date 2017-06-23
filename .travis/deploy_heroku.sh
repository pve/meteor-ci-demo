#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
echo heroku process
heroku container:push db --app $HEROKU_APP_NAME
heroku container:push app --app $HEROKU_APP_NAME