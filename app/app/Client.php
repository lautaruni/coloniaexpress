<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
	protected $table="clients";
	public $timestamps= true;

    protected $fillable=[
    	'firstname','lastname'
    ];

    public function setFirstnameAttribute($val){
    	$this->attributes['firstname']=ucfirst($val);
    }

    public function setLastnameAttribute($val){
    	$this->attributes['lastname']=ucfirst($val);
    }
}
