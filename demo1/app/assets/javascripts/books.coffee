# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#show-btn').on 'click', (e)->
    e.preventDefault();
    $.ajax
      type: 'GET'
      url: $(this).attr("href")
      data: $(this).serialize() #dung de truyen du lieu form
      dataType: "html"
      success: (data, status, xhr) ->
        console.log(xhr)
        $('#wrap_content').html(data)

  $('#new_book').on 'submit', (e)->
    e.preventDefault()
    $.ajax
      type: 'POST'
      url: this.action
      data: $(this).serialize()
      dataType: 'html'
      success: (response) ->
        console.log(response)
        $('#wrap_content').html(response)


