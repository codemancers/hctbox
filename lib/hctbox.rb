require 'hctbox/engine'
require 'kss'
require 'nokogiri'
require 'coderay'


module Hctbox
  # attribute to store the path of stylesheets which needs to be parsed
  mattr_accessor :stylesheets_css_path
  self.stylesheets_css_path = File.expand_path('../../app/assets/stylesheets', __FILE__)


  # attribute which includes or excludes assets. Right now, gem requires
  # users to include hctbox.js and hctbox.css in main_app manifest
  # files. Setting this flag to false will prevent hctbox to be required
  # in asset pipeline.
  mattr_accessor :require_assets
  self.require_assets = Rails.env.development?


  # can be used to configure module attributes like stylesheets css path.
  def self.config()
    raise 'no block given' unless block_given?
    yield(self)
  end
end
