//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function() {
    // this array is for start, end time of booking
  $('.time-select-btn').click(function() {
    var time_obj = $(this).data('time');
    var desk_id = $(this).parents().eq(2).data('id');
    var desk_date = $(this).data('date');
    var start = $(this).data('start');
    var end = $(this).data('end');

    $('#hidden-coffeeshop-name').val(desk_id);
    $('#hidden-start-time').val(time_obj);
    $('#booking-desk-date').text(desk_date);
    $('#booking-time-range').text(start + " - " + end);
    console.log(time_obj);
    console.log(desk_id);
    console.log(desk_date);
    console.log(start);
    console.log(end);
  });
});