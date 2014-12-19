# Initializer for hctbox. There are few configuration variables which can be
# modified so hctbox functionality can be hooked into your app.
Hctbox.config do |config|
  # attribute to store the path of stylesheets which needs to be parsed
  # This attribute will be used by kss to parse css files and try to
  # deduce documentation from css files.
  # NOTE: Uncomment this file if you are sure that your stylesheets
  #       contain required documentation.
  # config.stylesheets_css_path =
  #   File.expand_path('../../../app/assets/stylesheets', __FILE__)

  # attribute which includes or excludes assets. Right now, gem requires
  # users to include hctbox.js and hctbox.css in main_app manifest
  # files. Setting this flag to false will prevent hctbox to be required
  # in asset pipeline.
  config.require_assets = Rails.env.development?
end
