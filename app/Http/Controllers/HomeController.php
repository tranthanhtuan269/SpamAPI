<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function uploadImage(Request $request){
        $img_file = '';
        if (isset($request->base64)) {
            $data = $request->base64;

            list($type, $data) = explode(';', $data);
            list(, $data)      = explode(',', $data);
            $data = base64_decode($data);
            $filename = time() . '.png';
            file_put_contents(base_path('public/images/') . $filename, $data);

            return \Response::json(array('code' => '200', 'message' => 'success', 'image_url' => $filename));
        }
        return \Response::json(array('code' => '404', 'message' => 'unsuccess', 'image_url' => ""));
    }

    public function uploadImageApi(Request $request){
        $part = base_path('public/images/');

        if($_SERVER['REQUEST_METHOD'] == "POST")
        {
            $filename = rand(9,9999).basename($_FILES["imageupload"]["name"]);
            if($_FILES['imageupload'])
            {
                $destinationfile = $part.$filename;
                if(move_uploaded_file($_FILES['imageupload']['tmp_name'], $destinationfile))
                {
                    return \Response::json(array('code' => '1', 'message' => 'success', 'image_url' => url('/images/').'/'.$filename));
                }else
                {
                    return \Response::json(array('code' => '403', 'message' => 'unsuccess', 'image_url' => ""));
                }
            }else{
                return \Response::json(array('code' => '404', 'message' => 'unsuccess', 'image_url' => ""));
            }
        }else
        {
            return \Response::json(array('code' => '404', 'message' => 'unsuccess', 'image_url' => ""));
        }
    }

    public function uploadImageApi2(Request $request){
        $part = base_path('public/images/');
        $filename = rand()."_".time().'.jpeg';

        if($_SERVER['REQUEST_METHOD'] == "POST")
        {
            $image = $_POST['image'];
            $destinationfile = $part.$filename;
            if(file_put_contents($destinationfile, base64_decode($image)))
            {
                return \Response::json(array('code' => '200', 'message' => 'success', 'image_url' => $filename));
            }else
            {
                return \Response::json(array('code' => '403', 'message' => 'unsuccess', 'image_url' => ""));
            }
        }else
        {
            return \Response::json(array('code' => '404', 'message' => 'unsuccess', 'image_url' => ""));
        }
    }
}
