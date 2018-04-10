<!DOCTYPE html>
<html lang="en">
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cyber Hunt</title>

    <!-- Vendors -->

    <!-- Animate CSS -->
    <link href="{{ url('vendors/bower_components/animate.css/animate.min.css') }}" rel="stylesheet">

    <!-- Material Design Icons -->
    <link href="{{ url('vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css') }}"
          rel="stylesheet">

    <!-- Malihu Scrollbar -->
    <link href="{{ url('vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css') }}"
          rel="stylesheet">

    <!-- SweetAlert -->
    <link href="{{ url('vendors/bower_components/sweetalert2/dist/sweetalert2.min.css') }}" rel="stylesheet">

    <!-- Full Calendar -->
    <link href="{{ url('vendors/bower_components/fullcalendar/dist/fullcalendar.min.css') }}" rel="stylesheet">

    <!-- Site CSS -->
    <link href="{{ url('css/app-1.min.css') }}" rel="stylesheet">

    <!-- Page loader -->
    <script src="{{ url('js/page-loader.min.js') }}"></script>


    {{--<script type="text/javascript" src="{{ url('js/myjs.js') }}"></script>--}}

</head>

<body onload="notify('{{ session('notify')['message'] }}', '{{ session('notify')['type'] }}')">

<script>
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
</script>

@yield('content')


<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="{{ url('vendors/bower_components/jquery/dist/jquery.min.js') }}"></script>

<!-- Bootstrap -->
<script src="{{ url('vendors/bower_components/bootstrap/dist/js/bootstrap.min.js') }}"></script>

<!-- Malihu ScrollBar -->
<script src="{{ url('vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js') }}"></script>

<!-- Bootstrap Notify -->
<script src="{{ url('vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js') }}"></script>

<!-- Moment -->
<script src="{{ url('vendors/bower_components/moment/min/moment.min.js') }}"></script>

<!-- FullCalendar -->
<script src="{{ url('vendors/bower_components/fullcalendar/dist/fullcalendar.min.js') }}"></script>

<!-- Simple Weather -->
<script src="{{ url('vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js') }}"></script>

<!-- Salvattore -->
<script src="{{ url('vendors/bower_components/salvattore/dist/salvattore.min.js') }}"></script>

<!-- Flot Charts -->
<script src="{{ url('vendors/bower_components/flot/jquery.flot.js') }}"></script>
<script src="{{ url('vendors/bower_components/flot/jquery.flot.resize.js') }}"></script>
<script src="{{ url('vendors/bower_components/flot.curvedlines/curvedLines.js') }}"></script>

<!-- Sparkline Charts -->
<script src="{{ url('vendors/jquery.sparkline/jquery.sparkline.min.js') }}"></script>

<!-- EasyPie Charts -->
<script src="{{ url('vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js') }}"></script>

<!-- Demo Only -->
{{--<script src="{{ url('demo/js/flot-charts/curved-line.js') }}"></script>
<script src="{{ url('demo/js/flot-charts/line.js') }}"></script>
<script src="{{ url('demo/js/easy-pie-charts.js') }}"></script>
--}}{{--<script src="{{ url('demo/js/misc.js') }}"></script>--}}{{--
<script src="{{ url('demo/js/sparkline-charts.js') }}"></script>
<script src="{{ url('demo/js/calendar.js') }}"></script>--}}

<!-- SweetAlert -->
<script src="{{ url('vendors/bower_components/sweetalert2/dist/sweetalert2.min.js') }}"></script>

<!-- Site Functions & Actions -->
<script src="{{ url('js/app.min.js') }}"></script>

<!-- Demo Only -->
<script src="{{ url('demo/js/misc.js') }}"></script>


</body>

@yield('js')

</html>
