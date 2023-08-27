<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Installation extends Model
{

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'user_id', 'date', 'Ref', 'installation_id', 'delivered_to', 'installation_address', 'status', 'installation_details',

    ];

    protected $casts = [
        'user_id' => 'integer',
        'sale_id' => 'integer',
    ];


    public function sale()
    {
        return $this->belongsTo('App\Models\Sale');
    }

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
