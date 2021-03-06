<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    {!! Html::style('layout/bower_components/bootstrap/dist/css/bootstrap.min.css') !!}
    {!! Html::style('layout/dist/css/bootstrap.min.css') !!}        
    <!-- MetisMenu CSS -->
    {!! Html::style('layout/bower_components/metisMenu/dist/metisMenu.min.css') !!}    
    <!-- Custom CSS -->
    {!! Html::style('layout/dist/css/sb-admin-2.css') !!}
    <!-- Custom Fonts -->
    {!! Html::style('layout/bower_components/font-awesome/css/font-awesome.min.css') !!}
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{!! URL::to('/') !!}"><span style="color:#0000FF;">Colonia</span> <span style="color:#FF0000;">Express</span> - Facturación</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="{!! URL::to('/logout') !!}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="{!! URL::to('/') !!}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="{!! URL::to('/invoices') !!}"><i class="fa fa-file fa-fw"></i> Facturas</a>
                        </li>                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            @yield('page-content')
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    {!! Html::script('layout/bower_components/jquery/dist/jquery.min.js') !!}
    <!-- Bootstrap Core JavaScript -->
    {!! Html::script('layout/bower_components/bootstrap/dist/js/bootstrap.min.js') !!}
    <!-- Metis Menu Plugin JavaScript -->
    {!! Html::script('layout/bower_components/metisMenu/dist/metisMenu.min.js') !!}
    <!-- Custom Theme JavaScript -->
    {!! Html::script('layout/dist/js/sb-admin-2.js') !!}
    <!-- Page-Level Demo Scripts - Notifications - Use for reference -->
    <script>
    // tooltip demo
    $('.tooltip-demo').tooltip({
        selector: "[data-toggle=tooltip]",
        container: "body"
    })

    // popover demo
    $("[data-toggle=popover]")
        .popover()
    </script>
    <script type="text/javascript">
    $('#btn-search').click(function(){
        window.location="{!! URL::to('/invoices?') !!}firstname="+$('#firstname').val()+"&lastname="+$('#lastname').val();
    });
</script>

</body>

</html>
