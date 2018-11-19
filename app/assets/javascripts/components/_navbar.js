$(document).ready(function () {
  $('#dropdown').hover(function () {
      $('#dropdown-content', this).stop().slideDown('medium');
    },
    function () {
      $('#dropdown-content', this).stop().slideUp('medium');
    });
})
