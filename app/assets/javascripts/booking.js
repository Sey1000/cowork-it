$(document).ready(function() {
    // this array is for start, end time of booking

  $('.time-select-btn').click(function() {
    var time_obj = $(this).data('time');
    var desk_id = $(this).parents().eq(3).data('id');
    var desk_date = $(this).data('date');
    var start = $(this).data('start');
    var end = $(this).data('end');
    var start_time_obj = $(this).data('start-time')
    var end_time_obj = $(this).data('end-time')

    $(this).addClass('.time-selected');

    $('#hidden-coffeeshop-name').val(desk_id);
    $('#hidden-start-time').val(start_time_obj);
    $('#hidden-end-time').val(end_time_obj);
    $('#booking-desk-date').text(desk_date);
    $('#booking-time-range').text(start + " - " + end);
    console.log($(this));
    console.log($(this).parents().eq(3).data('id'));
  });
});