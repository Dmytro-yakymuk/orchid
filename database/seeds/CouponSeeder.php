<?php

use Illuminate\Database\Seeder;
use App\Coupon;

class CouponSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
        	'code' => 'abc123',
        	'type' => 'fixed',
        	'value' => 300
        ]);

        Coupon::create([
        	'code' => 'def456',
        	'type' => 'percent',
        	'percent_off' => 50
        ]);
    }
}
