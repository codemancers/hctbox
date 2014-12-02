@Hctbox ||= {}

class Hctbox.HtmlValidator
  constructor: ->
    @selector = '#js-hctbox-html-validator-link'
    @bindLink()

  bindLink: ->
    $(document).on 'click', @selector, @onClick

  onClick: =>
    data = new FormData()

      fragment: document.documentElement.outerHTML
      prefill: '0'
      doctype: 'HTML5'
      prefill_doctype: 'html401'
      group:   '0'
      ss:      '1'
      st:      '1'
      outline: '1'
      No200:   '1'
      verbose: '1'

    $.post 'http://validator.w3.org/check', data, @onValidatingMarkup, 'multipart/form-data;'
    false

  onValidatingMarkup: (data)=>
    console.info data
    $('body').append(data)


# create an instance of html validator
Hctbox.htmlValidator = new Hctbox.HtmlValidator()
