@Hctbox ||= {}

class Hctbox.DisplayErrors
  constructor: (@json)->

  show: ->
    tableIndex = 1
    tableRows = []
    for entry in @json
      tds = ['<td>' + tableIndex + '</td>']
      for key, val of entry
        if key == 'type' || key == 'message'
          td = '<td>' + val + '</td>'
          tds.push td

      row = '<tr>' + tds.join('') + '</tr>'
      tableRows.push row

      ++tableIndex

    table =
      '<table class="table table-striped table-bordered">' +
      '  <tbody>' +
      '    ' + tableRows.join('') +
      '  </tbody>' +
      '</table>'

    modalHtml = @createModal(table)
    $('#js-modal .modal').modal('hide')
    $('#js-modal').html(modalHtml)
    $('#js-modal .modal').modal()


  createModal: (bodyContent)->
    '<div class="modal hide fade">' +
    '  <div class="modal-header">' +
    '    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>' +
    '    <h3>Markup info and errors</h3>' +
    '  </div>' +
    '  <div class="modal-body">' +
    '    ' + bodyContent +
    '  </div>' +
    '  <div class="modal-footer">' +
    '  <a href="#" class="btn">Close</a>' +
    '  </div>' +
    '</div>'
