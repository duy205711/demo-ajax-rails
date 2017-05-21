# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#btn").on("ajax:success", (e, data, status, xhr) ->
    debugger
    console.log ('callback')
    $("#content").html data
  ).on "ajax:error", (e, xhr, status, error) ->
    debugger
    $("#content").html "<p>ERROR</p>"
