@extends('layout.main');
	@section('page-content')
		@if(Session::has('message'))
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            {!! Session::get('message') !!}
        </div>
        @endif
		<div class="page-header">
			<h1>Facturas</h1>
		</div>
    	<div class="btn-group">
    		<a href="{!! URL::to('invoices/create') !!}" class="btn btn-primary btn-lg">Agregar factura</a>
    	</div><br /><br />
        <div class="col-md-12 well">
            <span>Buscar cliente.</span>
            <div class="form-group">
                <input type="search" id="firstname" name="firstname" placeholder="nombre del cliente">
                <input type="search" id="lastname" name="lastname" placeholder="apellido del cliente">
                <button id="btn-search" class="btn btn-info">Buscar</button>
            </div>
            
        </div>
        <br /><br/><br /><br /><br /><br />
		<div class="panel panel-default">
            <div class="panel-heading">
                Lista de Facturas
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Cliente</th>
                                <th>Monto</th>
                                <th>Estado</th>
                                <th>Fecha de creación</th>
                                <th>Fecha de pago</th>
                                <th>Confirmar pago</th>
                            </tr>
                        </thead>
                        <tbody>
                        	@foreach($invoices as $item)
                            <tr>
                                <td>{!! $item->id !!}</td>
                                <td>{!! $item->firstname !!} {!! $item->lastname !!}</td>
                                <td>$ {!! str_replace(".", ",", $item->amount); !!}</td>
                                <td>{!! $item->status !!}</td>
                                <th>{!! date("d/m/Y H:i",strtotime($item->created_at)) !!}</th>
                                @if($item->created_at==$item->updated_at)
                                <th>-</th>
                                @else
                                <th>{!! date("d/m/Y H:i",strtotime($item->updated_at)) !!}</th>
                                @endif
                                @if($item->updated_at > $item->created_at)
                                <th><a href="{!! URL::to('/invoices/'.$item->id.'/edit/?action=confirm') !!}" class="btn btn-success disabled">Confirmado</a></th>
                                @else
                                <th><a href="{!! URL::to('/invoices/'.$item->id.'/edit/?action=confirm') !!}" class="btn btn-warning">Confirmar pago</a></th>
                                @endif
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->
        </div>
		{!! $invoices->render() !!}
	@endsection