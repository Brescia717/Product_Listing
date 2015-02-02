$(function() {
  $("#products th a, #products .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#products_search input").keyup(function() {
    $.get($("#products_search").attr("action"), $("#products_search").serialize(), null, "script");
    return false;
  });
  $("select").change(function() {
    var str = "";
    $( "select option:selected" ).each(function() {
      str += $( this ).text() + " ";
    });
    $( "#selected-categories" ).text( str );
  })
  .trigger( "change" );
});
// The coffee script version:
// $ ->
//   $('#products th a').live 'click', ->
//     $.getScript @href
//     false
//   return
