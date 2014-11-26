module Hctbox
  class StyleguidesController < ApplicationController
    def show
      @styleguide = Kss::Parser.new(Hctbox.stylesheets_css_path)

      case params[:id]
      when '1'
        render template: 'hctbox/styleguides/css/buttons'
      when '2'
        render template: 'hctbox/styleguides/css/forms'
      end
    end
  end
end
