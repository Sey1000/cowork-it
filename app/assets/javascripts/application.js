//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function() {
  $('.time-select-btn').click(function() {
    var time_int = $(this).data('id');
    var desk_id = $(this).parents().eq(2).data('id');
    $('#hidden-coffeeshop-name').val(desk_id);
    $('#hidden-start-time').val(time_int);
    console.log(time_int);
    console.log(desk_id);
  });
});