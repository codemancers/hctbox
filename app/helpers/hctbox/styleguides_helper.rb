module Hctbox
  module StyleguidesHelper
    # For displaying a block documented with KSS.
    #
    # section - The name of the section to render.
    #
    # Returns nothing. Renders a string of HTML to the template.
    def kss_block(section, &block)
      @section = @styleguide.section(section)
      modifiers = @section.modifiers

      @example_html = capture(&block)

      formatted_code = kss_format_html_code(@example_html.to_s)
      @example_code = CodeRay.scan(formatted_code, :html).div

      concat render(partial: 'hctbox/styleguides/styleguide_block',
                    locals: { html: @example_html, modifiers: modifiers })
    end

    def kss_format_html_code(html)
      require 'nokogiri'

      # Wrap code so that example html has only one root div
      wrapped_code = "<div>#{html}</div>"
      xml = Nokogiri::XML(wrapped_code)
      children = xml.root.children
      children.map(&:to_s).join("\n")
    end
  end
end
