@extends('layout.main')
	@section('page-content');
	<div class="page-header">
		<h1>Agrega nueva factura</h1>
		{!! Form::open(array('route'=>'invoices.store')) !!}
		<div class="form-group">
			{!! Form::label('Cliente') !!}
			<select name="client_id">
				@foreach($clients as $client)
				<option value="{!! $client->id !!}">{!! $client->lastname !!}, {!! $client->firstname !!}</option>
				@endforeach
			</select>
		</div>
		<div class="form-group">
			{!! Form::label('Monto') !!}
			<input type="text" name="amount" placeholder="Monto a pagar por el cliente" required>
		</div>
		<div class="btn-group">
			<a href="{!! URL::to('invoices') !!}" class="btn btn-danger btn-lg">Cancelar</a>
			<button name="subit" class="btn btn-primary btn-lg">Guardar</button>
		</div>
		{!! Form::close() !!}
	</div>
	@endsection