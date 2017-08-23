$(function() {
  $('.desk-head').on('click', function(event) {
      $(this).siblings('.desk-content').toggleClass('hidden');
      console.log(this);
  });
})

