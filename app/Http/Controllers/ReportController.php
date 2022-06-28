<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Spam;
use App\Models\Report;
use App\Helpers\Helper;

use Illuminate\Http\Request;
use App\Transformers\ReportTransformer;

use Illuminate\Support\Facades\Hash;

class ReportController extends Controller
{

	public function index(){
                $reports = Report::get();

                return fractal()
                        ->collection($reports)
                        ->transformWith(new ReportTransformer)
                        ->toArray();
        }

        public function show(Report $report)
        {
                return fractal()
                        ->item($report)
                        ->transformWith(new ReportTransformer)
                        ->toArray();
        }

        public function slug(string $slug){
                $report = Report::where("slug", "=", $slug)->first();
                return fractal()
                        ->item($report)
                        ->transformWith(new ReportTransformer)
                        ->toArray();
        }

        public function store(Request $request){
                $validator = \Validator::make($request->all(), [
                    'phone' => 'required|string|max:255',
                    'user_type' => 'required',
                    'spam_type' => 'required',
                    'reported_name' => 'required|string|max:255',
                    'comment' => 'required',
                ]);

                if ($validator->fails()) {
                        // return 
                        return response()->json(['status' => 1, 'message'=>'error invalid']);
                }
                // find User in system
                $user = User::where('phone', $request->phone)->first();
                if($user){
                        // find Spam of User in system
                        $spam = Spam::where('reported_id', $user->id)->first();
                        if($spam){
                                // create report
                                $report = new Report;
                                $report->spam_id = $spam->id;
                                $report->reporter_id = \Auth::id();
                                $report->reported_id = $user->id;
                                $report->comment = $request->comment;
                                $report->user_type = $request->user_type;
                                $report->spam_type = $request->spam_type;
                                $report->save();
                                return response()->json(['status' => 1, 'message'=>'success']);
                        }else{
                                // create spam
                                $spam = new Spam;
                                $spam->user_type = $request->user_type;
                                $spam->spam_type = $request->spam_type;
                                $spam->reported_id = $user->id;
                                $spam->reported_name = $request->reported_name;
                                $spam->job_id = $request->job_id;
                                $spam->save();

                                // create report
                                $report = new Report;
                                $report->spam_id = $spam->id;
                                $report->reporter_id = \Auth::id();
                                $report->reported_id = $user->id;
                                $report->comment = $request->comment;
                                $report->user_type = $request->user_type;
                                $report->spam_type = $request->spam_type;
                                $report->save();

                                return response()->json(['status' => 1, 'message'=>'success']);
                        }
                }else{
                        // create user
                        $user = new User;
                        $user->name = '';
                        $user->phone = $request->phone;
                        $user->email = '';
                        $user->password = Hash::make('tohpassword');
                        $user->save();

                        // create spam
                        $spam = new Spam;
                        $spam->reported_id = $user->id;
                        $spam->user_type = $request->user_type;
                        $spam->spam_type = $request->spam_type;
                        $spam->reported_name = $request->reported_name;
                        $spam->job_id = $request->job_id;
                        $spam->save();

                        // create report
                        $report = new Report;
                        $report->spam_id = $spam->id;
                        $report->reporter_id = \Auth::id();
                        $report->reported_id = $user->id;
                        $report->comment = $request->comment;
                        $report->user_type = $request->user_type;
                        $report->spam_type = $request->spam_type;
                        $report->save();

                        return response()->json(['status' => 1, 'message'=>'success']);
                }
        }

        public function suggestName(Request $request){
                $validator = \Validator::make($request->all(), [
                        'phone_number' => 'required|string|max:255',
                        'name' => 'required|string|max:255',
                        'user_type' => 'required',
                ]);

                if ($validator->fails()) {
                        // return 
                        return response()->json(['status' => 1, 'message'=>'error invalid']);
                }

                // find User in system
                $user = User::where('phone', $request->phone)->first();
                if($user){
                        // find Spam of User in system
                        $spam = Spam::where('reported_id', $user->id)->first();
                        if($spam){
                                // if exited report 
                                $report = Report::where('reporter_id', \Auth::id())->where('reported_id', $user->id)->first();

                                if($report){
                                        $report->suggest_name = $request->name;
                                        $report->save();
                                        return response()->json(['status' => 1, 'message'=>'success']);
                                }else{
                                        // create report
                                        $report = new Report;
                                        $report->spam_id = $spam->id;
                                        $report->reporter_id = \Auth::id();
                                        $report->reported_id = $user->id;
                                        // $report->comment = $request->comment;
                                        $report->user_type = $request->user_type;
                                        $report->suggest_name = $request->name;
                                        // $report->spam_type = $request->spam_type;
                                        $report->save();

                                        // update reported_name
                                        Helper::updateReportedName($user);
                                        // end update

                                        return response()->json(['status' => 1, 'message'=>'success']);
                                }
                        }else{
                                // create spam
                                $spam = new Spam;
                                $spam->user_type = $request->user_type;
                                // $spam->spam_type = $request->spam_type;
                                $spam->reported_id = $user->id;
                                $spam->reported_name = $request->reported_name;
                                $spam->job_id = $request->job_id;
                                $spam->save();

                                // create report
                                $report = new Report;
                                $report->spam_id = $spam->id;
                                $report->reporter_id = \Auth::id();
                                $report->reported_id = $user->id;
                                $report->user_type = $request->user_type;
                                $report->suggest_name = $request->name;
                                // $report->spam_type = $request->spam_type;
                                $report->save();

                                // update reported_name
                                Helper::updateReportedName($user);
                                // end update

                                return response()->json(['status' => 1, 'message'=>'success']);
                        }
                }else{
                        // create user
                        $user = new User;
                        $user->name = '';
                        $user->phone = $request->phone;
                        $user->email = '';
                        $user->password = Hash::make('tohpassword');
                        $user->save();

                        // create spam
                        $spam = new Spam;
                        $spam->reported_id = $user->id;
                        $spam->user_type = $request->user_type;
                        // $spam->spam_type = $request->spam_type;
                        $spam->reported_name = $request->reported_name;
                        $spam->job_id = $request->job_id;
                        $spam->save();

                        // create report
                        $report = new Report;
                        $report->spam_id = $spam->id;
                        $report->reporter_id = \Auth::id();
                        $report->reported_id = $user->id;
                        $report->user_type = $request->user_type;
                        $report->suggest_name = $request->name;
                        // $report->spam_type = $request->spam_type;
                        $report->save();

                        // update reported_name
                        Helper::updateReportedName($user);
                        // end update

                        return response()->json(['status' => 1, 'message'=>'success']);
                }
        }

        public function suggestJob(Request $request){
                $validator = \Validator::make($request->all(), [
                        'phone_number' => 'required|string|max:255',
                        'job_id' => 'required|string|max:255',
                        'user_type' => 'required',
                ]);

                if ($validator->fails()) {
                        // return 
                        return response()->json(['status' => 1, 'message'=>'error invalid']);
                }

                // find User in system
                $user = User::where('phone', $request->phone)->first();
                if($user){
                        // find Spam of User in system
                        $spam = Spam::where('reported_id', $user->id)->first();
                        if($spam){
                                // if exited report 
                                $report = Report::where('reporter_id', \Auth::id())->where('reported_id', $user->id)->first();

                                if($report){
                                        $report->job_id = $request->job_id;
                                        $report->save();
                                        return response()->json(['status' => 1, 'message'=>'success']);
                                }else{
                                        // create report
                                        $report = new Report;
                                        $report->spam_id = $spam->id;
                                        $report->reporter_id = \Auth::id();
                                        $report->reported_id = $user->id;
                                        // $report->comment = $request->comment;
                                        $report->user_type = $request->user_type;
                                        $report->job_id = $request->job_id;
                                        // $report->spam_type = $request->spam_type;
                                        $report->save();

                                        Helper::updateReportedJob($user);

                                        return response()->json(['status' => 1, 'message'=>'success']);
                                }
                        }else{
                                // create spam
                                $spam = new Spam;
                                $spam->user_type = $request->user_type;
                                // $spam->spam_type = $request->spam_type;
                                $spam->reported_id = $user->id;
                                $spam->reported_name = $request->reported_name;
                                $spam->job_id = $request->job_id;
                                $spam->save();

                                // create report
                                $report = new Report;
                                $report->spam_id = $spam->id;
                                $report->reporter_id = \Auth::id();
                                $report->reported_id = $user->id;
                                $report->user_type = $request->user_type;
                                $report->suggest_name = $request->name;
                                $report->job_id = $request->job_id;
                                // $report->spam_type = $request->spam_type;
                                $report->save();

                                Helper::updateReportedJob($user);

                                return response()->json(['status' => 1, 'message'=>'success']);
                        }
                }else{
                        // create user
                        $user = new User;
                        $user->name = '';
                        $user->phone = $request->phone;
                        $user->email = '';
                        $user->password = Hash::make('tohpassword');
                        $user->save();

                        // create spam
                        $spam = new Spam;
                        $spam->reported_id = $user->id;
                        $spam->user_type = $request->user_type;
                        // $spam->spam_type = $request->spam_type;
                        $spam->reported_name = $request->reported_name;
                        $spam->job_id = $request->job_id;
                        $spam->save();

                        // create report
                        $report = new Report;
                        $report->spam_id = $spam->id;
                        $report->reporter_id = \Auth::id();
                        $report->reported_id = $user->id;
                        $report->user_type = $request->user_type;
                        $report->suggest_name = $request->name;
                        $report->job_id = $request->job_id;
                        // $report->spam_type = $request->spam_type;
                        $report->save();

                        Helper::updateReportedJob($user);

                        return response()->json(['status' => 1, 'message'=>'success']);
                }
        }

        public function getTop(Request $request){
                $topSpam = Report::select('id', 'reported_id', 'reporter_id', 'comment', 'job_id', \DB::raw('count(reported_id) as total'))
                                ->groupBy('reported_id')
                                ->orderBy('total', 'desc')->take($request->limit)->get();
                return fractal()
                        ->collection($topSpam)
                        ->transformWith(new ReportTransformer)
                        ->toArray();
        }
}
