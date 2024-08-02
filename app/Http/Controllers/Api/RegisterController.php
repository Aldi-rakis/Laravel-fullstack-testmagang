<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;


class RegisterController extends Controller
{
  public function register(Request $request){
  
    // create user register
      $user = User::create($request->only('name', 'email') + [
        'password' => Hash::make($request->password),
        
    ]);
    return response()->json([
        'succes' => true,
        'message' => 'succes Created Account',
        'data' => $user
    ], 200);

  }
}