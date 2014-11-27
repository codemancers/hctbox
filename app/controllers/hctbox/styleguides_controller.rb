module Hctbox
  class StyleguidesController < ApplicationController
    def show
      @styleguide = Kss::Parser.new(Hctbox.stylesheets_css_path)

      case params[:id]
      when '1'
        render template: 'hctbox/styleguides/css/buttons'
      when '2'
        render template: 'hctbox/styleguides/css/forms'
      when '3'
        render template: 'hctbox/styleguides/css/alerts'
      when '4'
        render template: 'hctbox/styleguides/css/tables'
      end
    end
  end
end
