<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teams', function (Blueprint $table) {
            $table->increments('id');

            $table->string('teamname', 50);

            $table->string('participant1', 50);
            $table->string('college1', 50);
            $table->integer('year1');
            $table->string('dept1', 50);
            $table->unsignedBigInteger('phone1');
            $table->string('email1', 50);

            $table->string('participant2', 50);
            $table->string('college2', 50);
            $table->integer('year2');
            $table->string('dept2', 50);
            $table->unsignedBigInteger('phone2');
            $table->string('email2', 50);

            $table->string('password', 30)->default('disciple');
            $table->integer('score')->default(0);

            $table->integer('timeleft')->default(9000);

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
        Schema::dropIfExists('teams');
    }
}
