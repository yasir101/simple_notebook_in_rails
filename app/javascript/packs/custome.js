$(document).ready(function () {
    $('.notes_area').hover(
        function () {
            $(this).find('.action_area').fadeIn();
        }, function () {
            $(this).find('.action_area').fadeOut();
        }
    );
});