ready = ->
  $('form').on 'click', '.remove_fields', (e) ->
    e.preventDefault()
    if confirm('Are you sure you want to remove this image?')
      $(this).prev('input[type=hidden]').val 1
      $(this).closest('.add-object').hide()
    else
      # Do nothing!


  $('form').on 'click', '.add_fields', (e) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    # added two lines below for highlighting newly added fields.
    $(this).prev().addClass('highlight').hide()
    $(this).prev().fadeIn(1000)
    e.preventDefault()

$(document).ready(ready)
