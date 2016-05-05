// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//Show flashes for 4 seconds then animate slide up to hide
$(function() {
  $("#flash").slideDown(400).delay(4000).slideUp(400);
});
