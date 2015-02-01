$(function() {
  $("#products th a, #products .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $(".chosen-select").chosen();
  $("#products_search input").keyup(function() {
    $.get($("#products_search").attr("action"), $("#products_search").serialize(), null, "script");
    return false;
  });
});
// The coffee script version:
// $ ->
//   $('#products th a').live 'click', ->
//     $.getScript @href
//     false
//   return
