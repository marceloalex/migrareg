/* color switcher script */
$(document).ready(function() {

    $(".colorScheme li").click(function(){
        $(".colorScheme li").css('borderColor','#fff');
        $(this).css('borderColor','#888');

        $(".cssplayMenu").removeClass().addClass('cssplayMenu');
        color = $(this).attr('class');
        $(".cssplayMenu").addClass(color);
    });

});
