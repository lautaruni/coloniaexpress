<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Invoice extends Model
{
	protected $table="invoices";
	public $timestamps= true;

    protected $fillable=[
    	'code','amount','status'
    ];

    public function setCodeAttribute($val){
    	return $this->attributes['code']=bcrypt($val);
    }

    public function setAmountAttribute($val){
        $val=str_replace(",", ".", $val);
        return $this->attributes['amount']=$val;
    }

	protected function getLastID(){
        return DB::getPdo()->lastInsertId();
    }

}
