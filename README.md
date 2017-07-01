# meteor-ci-demo
Small demo of a Meteor app, with tests in mocha.

Build platform: Travis. Deployment to Heroku.

This demo app should be live at https://pve-meteor-ci-demo.herokuapp.com/

# Instructions for getting started.

Required to get this working:
- Travis account (free)
- Heroku account (credit card required, but enough free resources)

You might also need the Heroku CLI for setting it up.
```
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh
```
Once the pipeline works, these are no longer required.

In the Travis settings you need to set HEROKU_API_KEY with you Heroku API key.

Note that 'example' is the Heroku name of the
application, and should be unique across all Heroku accounts. 
As a naming convention, you might want to use the repository owner, name and version branch in the application name.
Heroku --help is your friend.

The following are one time setup commands. 
```
heroku apps:create example --region eu 
heroku buildpacks:set https://github.com/AdmitHub/meteor-buildpack-horse.git
heroku addons:create mongolab:sandbox
heroku config | grep MONGODB_URI
heroku config:add MONGO_URL=<MONGODB_URI value>
heroku config:add ROOT_URL=https://example.herokuapp.com
```
Adapt .travis.yml to reflect your application name, and then you are ready to trigger a build by pushing to the master branch.

Travis build status: [![Build Status](https://travis-ci.org/pve/meteor-ci-demo.svg?branch=master)](https://travis-ci.org/pve/meteor-ci-demo)

Instructions to also consult:

https://www.coshx.com/blog/2016/08/19/how-to-deploy-a-meteor-1-4-app-to-heroku/

https://medium.com/@anicolaspp/github-travis-ci-and-heroku-platform-fe21a72dfb5
