$(function() {
    $("input.search").keydown(function(event) {
        if (event.keyCode == 13) { /* enter */
            event.preventDefault();
            $(this).parent("form").submit();
        }
    });
});
