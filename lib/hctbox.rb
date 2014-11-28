require 'hctbox/engine'
require 'kss'
require 'nokogiri'
require 'coderay'


module Hctbox
  # attribute to store the path of stylesheets which needs to be parsed
  mattr_accessor :stylesheets_css_path
  self.stylesheets_css_path = File.expand_path('../../app/assets/stylesheets', __FILE__)


  # can be used to configure module attributes like stylesheets css path.
  def self.config()
    raise 'no block given' unless block_given?
    yield(self)
  end
end
