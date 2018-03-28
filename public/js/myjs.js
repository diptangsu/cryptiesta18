'use strict';

$(window).load(function () {
    //Welcome Message (not for login page)
    function notify(message, type) {
        $.notify({
            message: message
        }, {
            type: type,
            allow_dismiss: false,
            label: 'Cancel',
            className: 'btn-xs btn-default',
            placement: {
                from: 'top',
                align: 'right'
            },
            delay: 2500,
            animate: {
                enter: 'animated flipInX',
                exit: 'animated flipOutX'
            },
            offset: {
                x: 30,
                y: 30
            }
        });
    }

    // notify('Welcome', 'success');
    // alert('Here it is')
});

