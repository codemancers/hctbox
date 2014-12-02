@Hctbox ||= {}

class Hctbox.HtmlValidator
  constructor: ->
    @selector = '#js-hctbox-html-validator-link'
    @bindLink()

  bindLink: ->
    $(document).on 'click', @selector, @onClick

  onClick: =>
    data = @getDoctype() + "\r\n" + document.documentElement.outerHTML

    $.ajax
      url: 'https://validator.nu/?out=json&showsource=yes'
      data: data
      type: 'POST'
      contentType: 'text/html'
      success: @onValidatingMarkup
      error: @onError

    false

  onValidatingMarkup: (data)=>
    displayErrors = new Hctbox.DisplayErrors(data['messages'])
    displayErrors.show()

  onError: (xhr, status, error)->
    alert status

  # http://stackoverflow.com/questions/6088972/get-doctype-of-an-html-as-string-with-javascript
  getDoctype: ->
    node = document.doctype;
    html = "<!DOCTYPE " +
      node.name +
      (node.publicId ? ' PUBLIC "' + node.publicId + '"' : '') +
      (!node.publicId && node.systemId ? ' SYSTEM' : '') +
      (node.systemId ? ' "' + node.systemId + '"' : '')
      '>'


# create an instance of html validator
Hctbox.htmlValidator = new Hctbox.HtmlValidator()
