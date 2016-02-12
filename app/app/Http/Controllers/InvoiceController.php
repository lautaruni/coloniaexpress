<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\clients_to_invoice;
use App\client;
use App\Invoice;
use DB;
use Session;
use Redirect;

class InvoiceController extends Controller
{
	public function index(){
		$invoices=DB::table('invoices')
			->select(DB::raw('invoices.*, clients.firstname, clients.lastname'))
			->leftJoin('clients_to_invoices','invoices.id','=','clients_to_invoices.invoice_id')
			->leftJoin('clients','clients_to_invoices.client_id','=','clients.id');
		if(isset($_GET['firstname']) && isset($_GET['lastname'])){
			if($_GET['firstname']==""){
				$firstname="%";
			}
			if($_GET['lastname']==""){
				$firstname="%";
			}
			$invoices=$invoices->where('clients.firstname',$_GET['firstname'])
				->where('clients.lastname',$_GET['lastname']);
			//$search=array('firstname'=>$_GET['firstname'],'lastname'=>$_GET['lastname']);
		}
		$invoices=$invoices->orderBy('invoices.id','desc')
			->paginate(15);
		return view('invoice.index',['invoices'=>$invoices]);
	}

	public function create(){
		$clients=Client::select(DB::raw('id,firstname,lastname'))->orderby('lastname','asc')->get();
		return view('invoice.create',['clients'=>$clients]);
	}

	public function store(Request $request){
		$this->validate($request, [
        	'client_id' => 'required',
        	'amount' => 'required',
		]);
		// SALVO
		Invoice::create([
			'code'=>date("Y-m-d_").rand(0,999999),
			'amount'=>$request->input('amount'),
			'status'=>'Pendiente',
			]);
		$id=Invoice::getLastID();
		// salvo la relación
		clients_to_invoice::create([
			'client_id'=>$request->input('client_id'),
			'invoice_id'=>$id
			]);
		Session::flash('message','Factura agregada con éxito');
        return redirect('invoices');
	}

	public function edit($id){
		if($_GET['action']=="confirm"){
			$invoice=Invoice::find($id);
			$invoice->status='Pago';
			$invoice->updated_at=date("Y-m-d H:i:s");
			$invoice->save();
			Session::flash('message','Confirmación de pago exitosa.');
        	return redirect('invoices');
		}else{
			// SOLO PARA ADMINISTRADORES.
		}
	}

	public function update(Request $Request){

	}

	public function destroy($id){
		// SOLO PARA ADMINISTRADORES

	}

	public function show($id){
		
	}
}
