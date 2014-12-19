require 'rails/generators'

module Hctbox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Copies default Hctbox initializer to your application."

      def copy_initializer
        template "hctbox.rb", "config/initializers/hctbox.rb"
      end
    end
  end
end
