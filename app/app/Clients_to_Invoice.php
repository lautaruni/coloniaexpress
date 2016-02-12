<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clients_to_Invoice extends Model
{
	protected $table="clients_to_invoices";
	public $timestamps= true;

    protected $fillable=[
    	'client_id','invoice_id'
    ];

    public function getInvoice($id){

    }
}
