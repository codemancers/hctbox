require 'rails/generators'

module Hctbox
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../app/views/hctbox", __FILE__)
      desc "Copies default Hctbox views to your application."

      def copy_views
        view_directory :styleguides
        view_directory :validators
      end

      protected

      def view_directory(name)
        directory name.to_s, "app/views/hctbox/#{name}"
      end
    end
  end
end
