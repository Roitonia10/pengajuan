<?php

use App\Http\Controllers\CoaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PengajuanController;
use App\Models\Pengajuan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('coa', CoaController::class);
// Route::get('/coa', [CoaController::class, 'index']);
Route::resource('pengajuan', PengajuanController::class);
Route::post('/pengajuan/validasi/{id}', [PengajuanController::class, 'validasi'])->name('pengajuan.validasi');
Route::post('/coa/validasi/{id}', [CoaController::class, 'validasi'])->name('coa.validasi');
Route::get('/dashboard', [DashboardController::class, 'index']);
Route::get('/realisasi/{id}', [PengajuanController::class, 'addRealisasi'])->name('pengajuan.realisasi');
Route::post('/pengajuan/realisasi', [PengajuanController::class, 'storeRealisasi'])->name('pengajuan.realisasi.store');
Route::get('/pdf/{id}', [PengajuanController::class, 'printPdf'])->name('pdf');
