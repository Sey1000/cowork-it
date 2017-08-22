//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function() {
  $('.time-select-btn').click(function() {
    console.log($(this).data('id'));
    console.log($(this).parents().eq(2).data('id'));
  });
});