<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::insert([
            ['name' => 'Vegatable', 'slug' => 'vegatable'],
            ['name' => 'Meat', 'slug' => 'meat'],
            ['name' => 'Fruits', 'slug' => 'fruits'],
            ['name' => 'Bestseller', 'slug' => 'bestseller'],
            ['name' => 'Organic Food', 'slug' => 'organic_food'],
            ['name' => 'Healthy Benefit', 'slug' => 'healthy_benefit'],
        ]);
    }
}
