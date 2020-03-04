$(document).ready(function() {
    var routeName = window.location.href.split('/')[window.location.href.split('/').length-1];
    switch (routeName) {
        case '':
            $('#home-menu').addClass('active');
            break;
        case 'user':
            $('#user-menu').addClass('active');
            break;
        case 'role':
            $('#role-menu').addClass('active');
            break;
        default:
            $('.nav-sidebar').find('.nav-link').removeClass('active');
    }
    $('.nav-sidebar').find('.nav-item').click(function () {
       $('.nav-sidebar').find('.nav-item').each(function() {
           $(this).find('.nav-link').removeClass('active');
       });
       $(this).find('.nav-link').addClass('active');
    });
});