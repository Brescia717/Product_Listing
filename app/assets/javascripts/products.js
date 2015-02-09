$(document).ready(function() {
  $("#products th a, #products .pagination a").on("click", function() {
    $.getScript(this.href);
    return false;
  });


  // {
  //   allow_single_deselect: true,
  //   no_results_text: 'No results matched',
  //   width: '200px'
  // });

  // $("p").hover(function() {
  //   $(this).css("background", "red");
  // }, function() {
  //   $(this).css("background", "white");
  // });

  // $("#search").on("keyup click input", (function() {
  //   if (this.value.length > 0) {
  //     $("td").show().filter(function () {
  //       return $(this).find(this.value)
  //       .text().toLowerCase().indexOf($("#search").val().toLowerCase()) == -1;
  //     }).hide();
  //   } else {
  //     $("td").show();
  //   };
  // });
});
