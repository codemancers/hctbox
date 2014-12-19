require 'rails/generators'

module Hctbox
  module Generators
    class ControllersGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../app/controllers/hctbox", __FILE__)
      desc "Copies default Hctbox controllers to your application."

      def copy_controllers
        controller_file :styleguides
      end

      protected

      def controller_file(name)
        controller = "#{name.to_s}_controller.rb"
        copy_file controller, "app/controllers/hctbox/#{controller}"
      end
    end
  end
end
