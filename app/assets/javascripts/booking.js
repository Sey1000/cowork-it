$(document).ready(function() {

    $('.time-select-btn').click(function() {
        // set desk id and date automatically
        var desk_id = $(this).parents().eq(3).data('id');
        var desk_date = $(this).data('date');
        $('#hidden-coffeeshop-name').val(desk_id);
        $('#booking-desk-date').text(desk_date);

        // Fancy selecting stuff
        var $classSib = $(this).siblings().hasClass('background-gray-button');
        if ($classSib) {
            $(this).addClass('background-gray-button');

            if ($(this).index() < $(this).siblings('.background-gray-button').index()) {
                var nexts = $(this).nextUntil('.background-gray-button');
                nexts.addClass('background-gray-button');
            } else {
                var prevs = $(this).prevUntil('.background-gray-button');
                prevs.addClass('background-gray-button');
            }

        } else {
            $('.time-select-btn').removeClass('background-gray-button');
            $(this).addClass('background-gray-button');    
        }

        // If only one is selected
        if (('.background-gray-button').length == 1) {
            var start = $(this).data('start');
            var end = $(this).data('end');
            var start_time_obj = $(this).data('start-time');
            var end_time_obj = $(this).data('end-time');
        } else {
            var start = $('.background-gray-button').first().data('start');
            var end = $('.background-gray-button').last().data('end');
            var start_time_obj = $('.background-gray-button').first().data('start-time');
            var end_time_obj = $('.background-gray-button').last().data('end-time');
        }
        
        $('#booking-time-range').text(start + " - " + end);
        $('#hidden-start-time').val(start_time_obj);
        $('#hidden-end-time').val(end_time_obj);

    console.log(desk_id);
    console.log(start_time_obj);
    console.log(end_time_obj);
});
});