<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbPengajuanItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_pengajuan_items', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kegiatan');
            $table->char('realisasi', 50)->nullable();
            $table->char('jumlah_pengajuan', 50);
            $table->unsignedBigInteger('pengajuan_id');
            $table->foreign('pengajuan_id')->references('id')->on('tb_pengajuans')->onDelete('cascade')->onUpdate('cascade');
            $table->unsignedBigInteger('coa_id');
            $table->foreign('coa_id')->references('id')->on('tb_coas')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('tb_pengajuan_items');
    }
}
