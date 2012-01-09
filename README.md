# Scamp Bot Heroku

Get a [scamp](https://github.com/wjessop/Scamp) bot for [campfire](http://campfirenow.com) running on [Heroku](http://heroku.com) in no time.

### Installation

Clone the repo and bundle.

    git clone git://github.com/seenmyfate/scamp-bot-heroku.git
    cd scamp-bot-heroku; bundle

Create a heroku app, add the config vars and push

    heroku create
    heroku config:add CAMPFIRE_KEY=your_api_key SUBDOMAIN=your_subdomain
    git push heroku master

