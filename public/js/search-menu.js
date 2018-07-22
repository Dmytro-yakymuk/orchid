$(document).on('click', '.js-open-search', function (e) {
  e.preventDefault();
  $("#aa-input-container").removeClass("aa-input-container-none").addClass("aa-input-container");
  $(".js-open-search").removeClass("js-open-search").addClass("js-out-search");
});

$(document).on('click', '.js-out-search', function (e) {
  e.preventDefault();
  $("#aa-input-container").removeClass("aa-input-container").addClass("aa-input-container-none");
  $(".js-out-search").removeClass("js-out-search").addClass("js-open-search");
});

