@Hctbox ||= {}

class Hctbox.HtmlValidator
  constructor: ->
    @selector = '#js-hctbox-html-validator-link'
    @bindLink()

  bindLink: ->
    $(document).on 'click', @selector, @onClick

  onClick: =>
    data = document.documentElement.outerHTML
    console.info data

    $.ajax
      url: 'https://validator.nu/?out=json&showsource=yes'
      data: data
      type: 'POST'
      contentType: 'text/html'
      success: @onValidatingMarkup
      error: @onError
      beforeSend: @beforeSend

    false

  onValidatingMarkup: (data)=>
    alert(10)
    console.info data
    $('body').append(data)

  onError: (xhr, status, error)->
    console.info xhr
    console.info status
    console.info error

  beforeSend: (xhr, settings)->
    console.info(xhr)
    true


# create an instance of html validator
Hctbox.htmlValidator = new Hctbox.HtmlValidator()
