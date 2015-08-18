# non-rails-bdd-testing-application

This repo is a basic configuration to test generic application (non rails) using the power of [Capybara](https://github.com/jnicklas/capybara) and [Rspec](rspec.info/).
Sometimes I need to the test the behaviour of generic web application written in non Ruby languages, like Wordpress, Drupal...
This repo provide a basic configuration to start writing your own tests. I use [Sequel](https://github.com/jeremyevans/sequel) gem to maintain the persistence with the database and [Dotenv](https://github.com/bkeepers/dotenv) gem to manage the configurations.
You can see an example of .env file looking the .env.example file. 

## Installation

Clone the repo.

Execute:

    $ bundle

Then create and configure the .env file looking the .env.example file.

Start writing your test!

## Sequel

You can see an example in the models directory. Remember to configure your .env file with database configuration

## Switching from Selenium to Webkit

switching is very simple, you can configure the driver in your .env file. You can see the spec_helper.rb source code to see how I have managed the driver configuration

## Use Chrome (or Chromium) instead default Firefox
You can use chrome or chromium instead the default Firefox browser. You can configure the browser selection configuring the .env file


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
