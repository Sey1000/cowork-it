$(document).ready(function() {
    // this array is for start, end time of booking

  $('.time-select-btn').click(function() {
    var time_obj = $(this).data('time');
    var desk_id = $(this).parents().eq(3).data('id');
    var desk_date = $(this).data('date');
    var start = $(this).data('start');
    var end = $(this).data('end');
    var start_time_obj = $(this).data('start-time');
    var end_time_obj = $(this).data('end-time');

    if ($(this).siblings().hasClass('background-gray-button')) {
        var prevs = $(this).prevUntil('.background-gray-button');
        $(this).toggleClass('background-gray-button');
        prevs.toggleClass('background-gray-button');
    } else {
        $(this).toggleClass('background-gray-button');    
    }

    // console.log($(this).siblings().hasClass('background-gray-button'));
    // console.log($(this).prev().hasClass('background-gray-button'));
    // console.log($(this).next().hasClass('background-gray-button'));

    $('#hidden-coffeeshop-name').val(desk_id);
    $('#hidden-start-time').val(start_time_obj);
    $('#hidden-end-time').val(end_time_obj);
    $('#booking-desk-date').text(desk_date);
    $('#booking-time-range').text(start + " - " + end);
        
    console.log(desk_id);
    console.log(start_time_obj);
    console.log(end_time_obj);
  });
});