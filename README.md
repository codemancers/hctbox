# Html CSS toolbox

Out-of-box styleguides for your rails applications. This gem is based on kss gem.
This gem also provides basic html markup validator which can check for markup
issues on your webpages.


You can see a demo of this gem [here](https://hctbox.herokuapp.com).
And the source code of demo [here](https://github.com/code-mancers/hctbox-demo).

## Installation
Add this line to your application's Gemfile:

    gem 'hctbox', github: 'code-mancers/hctbox'

And then execute install to copy initializer:

    $ bundle install
    $ bundle exec rails generate hctbox:install

And if you want to customize controllers and views (often, you should be), you can do

    $ bundle exec rails generate rapidfire:controllers
    $ bundle exec rails generate rapidfire:views

## Usage

Add this line to your routes will and you will be good to go!

    mount Hctbox::Engine => "/hctbox", as: :hctbox

And point your browser to [styleguides path](http://localhost:3000/hctbox/styleguides/1)


#### Goals

- To provide a boilerplate for CSS styleguide using [kss](https://github.com/kneath/kss)
  gem
- To integrate Html markup validator. See [w3c validator](http://validator.w3.org/)
- To integrate CSS validator. See [w3c validator](http://jigsaw.w3.org/css-validator/)
- To provide easy way to randomize text on a given page, so that designers can easily
  check for overflow of text in `div`s, `p`s etc.
