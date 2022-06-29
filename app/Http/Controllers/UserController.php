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
        $user = \Auth::user();
        $user->second_phone_number = $request->second_phone_number;
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->email2 = $request->email2;
        $user->birthday = $request->birthday;
        $user->gender = $request->gender;
        $user->street = $request->street;
        $user->city_id = $request->city;
        $user->company = $request->company;
        $user->about = $request->about;
        $user->website = $request->website;
        $user->save();

        return response()->json(['status' => 1, 'message'=>'OK', 'data' => fractal()
                                                                            ->item($user)
                                                                            ->transformWith(new UserTransformer)
                                                                            ->toArray()]);
        
        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function updateUserSecurity(Request $request){
        $user = \Auth::user();
        $user->security = $request->security;
        $user->save();

        return response()->json(['status' => 1, 'message'=>'OK']);
        
        return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
    }

    public function getUserProfile(Request $request){
        $user = User::where('phone', $request->phone)->first();
        if($user){
            return response()->json(['status' => 1, 'message'=>'OK', 'data' => fractal()
                                                                                ->item($user)
                                                                                ->transformWith(new UserTransformer)
                                                                                ->toArray()]);
            return fractal()
                ->item($user)
                ->transformWith(new UserTransformer)
                ->toArray();
        }else{
            return response()->json(['status' => 404, 'message'=>'not found']);
        }
    }

    public function login(Request $request)
    {
        $request['grant_type']      = 'password';
        $request['client_id']       = 2;
        $request['client_secret']   = '3vvfsa28pyF2dsqcwoBgYQQlsL5mC5VrBLx1fJOC';
        $request['name']            = $request->phone;
        $request['password']        = 'tohpassword';
        $request['scope']           = '';

        $validator = \Validator::make($request->all(), [
            'phone' => 'required|string|min:3|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                    'status_code' => 422,
                    'message' => 'Failed to login.',
                    'errors' => $validator->errors()->all()
                ], 1);
        }

        $credentials = request(['phone', 'password']);
        if(!\Auth::attempt($credentials))
            return response()->json([
                'status_code' => 401,
                'message' => 'Unauthorized',
                'user_id' => null
            ], 1);
        $user = $request->user();
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        $token->save();
        return response()->json([
            'code' => 1,
            'message' => 'Successfully Logined',
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'user_id' => $user->id
        ]);
    }
}
