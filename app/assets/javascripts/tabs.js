// ----- Tabs
$('#tabs > li').next().hide();
$('#tabs > li:first').next().show();
$('#tabs > li').click(function () {
  $('#tabs > li').next().hide();
  $(this).next().show();
});
// ----- Tabs [END]