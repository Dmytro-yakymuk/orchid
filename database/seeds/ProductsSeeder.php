<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {	
    	for ($i=1; $i <= 100; $i++) {
	        Product::create([
	            'name' => 'Product - '.$i,
	            'slug' => 'product-'.$i,
				'details' =>' <li>Using energy and natural resources responsibly</li> <li>Maintaining biodiversity</li> <li>Respecting regional environmental balances</li> <li>Enhancing soil fertility</li> <li>Preserving water quality</li> <li>Promoting animal health and welfare</li> <li>Catering for animals specific needs</li> ',
	            'description' =>'Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis sem dapibus, varius egestas lorem a sollicitudin.',
                'price' => rand(200, 1500),
                'status' => '1',
                'image' => 'products\June2018\uRxyqNu9nHvtKEctAnWX.jpg',
                'images' => '',
	        ])->categories()->attach(rand(1,6));
        }

        $product = Product::find(1);
        $product->categories()->attach(2);
    }
}
