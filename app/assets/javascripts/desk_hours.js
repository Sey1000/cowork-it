$(function() {
  $('.has-popover').popover({
    trigger: 'hover',
    delay: { "show": 100, "hide": 100 },
    content: function () {
      return $(".popover-content").html();
    }
  });
});
