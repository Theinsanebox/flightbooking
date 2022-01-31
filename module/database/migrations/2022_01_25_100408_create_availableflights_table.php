<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAvailableflightsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('availableflights', function (Blueprint $table) {
            $table->id();
            $table->date('from_date')->format('d-m-Y');
            $table->date('to_date')->format('d-m-Y');
            $table->string('from_dest');
            $table->string('to_dest');
            $table->integer('pricing');
            $table->string('departure');
            $table->time('duration')->format('h:i');
            $table->time('from_time')->format('h:i');
            $table->time('to_time')->format('h:i');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('availableflights');
    }
}
