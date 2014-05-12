# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  scroll_pos = 0
  $(document).scroll ->
    scroll_pos = $(this).scrollTop()
    if scroll_pos > 340
      $(".header-navigation").css "background-color", "rgba(0,0,0,0.9)"
    else
      $(".header-navigation").css "background-color", "transparent"
    return

  return
