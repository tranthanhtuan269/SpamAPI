<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Transformers\UserTransformer;

class UserController extends Controller
{
    public function index(){
        $users = User::get();

        return fractal()
                ->collection($users)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function show(User $user)
    {
        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function slug(string $slug){
        $user = User::where("slug", "=", $slug)->first();
        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function updateUserProfile(Request $request){
        $user = Auth::user();
        $user->phone = $user->phone_number;
        $user->second_phone_number = $user->second_phone_number;
        $user->first_name = $user->first_name;
        $user->last_name = $user->last_name;
        $user->email = $user->email;
        $user->birthday = $request->birthday;
        $user->gender = $request->gender;
        $user->street = $request->street;
        $user->city_id = $request->city;
        $user->company = $request->company;
        $user->about = $request->about;
        $user->website = $request->website;
        $user->save();
        
        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function getUserProfile(Request $request){
        $user = User::where('phone', $request->phone)->first();
        if($user){
            return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
        }else{
            return response()->json(['status' => 200, 'message'=>'not found']);
        }
    }
}
