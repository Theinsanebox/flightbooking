<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\http;
use App\Models\flight;
use App\Models\availableflight;

class flightControl extends Controller
{
    
    //all flight data

    function showFlightName(){
        $data = flight::all();
        return view('index',['AllData'=>$data]);
    }

    //send data to second page and filter flights

    function submitForm1(Request $req){

        $data = new availableflight;

        $data2 = flight::all();

        if(DB::select("SELECT * FROM `availableflights` WHERE from_dest='".$req->from_dest."' && to_dest='".$req->to_dest."'&& flight_type='".$req->flight_type."' && trip_type='".$req->trip_type."'  && flight_date BETWEEN '".$req->from_date."' AND '".$req->to_date."'")){
            $newData = DB::select("SELECT * FROM `availableflights` WHERE from_dest='".$req->from_dest."' && to_dest='".$req->to_dest."' && flight_type='".$req->flight_type."' && trip_type='".$req->trip_type."' && flight_date BETWEEN '".$req->from_date."' AND '".$req->to_date."'");
            $newData2 = DB::select("SELECT * FROM `availableflights` WHERE from_dest='".$req->to_dest."' && to_dest='".$req->from_dest."' && flight_type='".$req->flight_type."' && trip_type='".$req->trip_type."' && flight_date BETWEEN '".$req->from_date."' AND '".$req->to_date."'");
            return view('search-flights2',['AllFilteredData'=>$newData,'defaultReq'=>$req,'interChanged1'=>$newData2,'NewFlightD'=>$data2]);
        }
        else{
            return "No Flights Available";
        }

    }


    // for all flights
    function showFlightName1(Request $req){
        $data = flight::all();

        return view('search-flights2',['NewFlightD'=>$data]);
    }


    // for login
    function checkLogin1(Request $req){

        $sessions = $req->input();

        $req->session()->put('email',$sessions['email']);
        $req->session()->put('password',$sessions['password']);

        $data = DB::connection('mysql2')->select("SELECT * FROM `adminusers` WHERE email='".$req->email."' && password='".$req->password."'");
        $data2 = DB::connection('mysql2')->select("SELECT * FROM `superadmin` WHERE email='".$req->email."' && password='".$req->password."'");
        $data3 = DB::connection('mysql2')->select("SELECT * FROM `usertables` WHERE email='".$req->email."' && password='".$req->password."'");

        if($data || $data2 || $data3){
            return redirect('');
        }
        else{
            return redirect('login');             
        }

    }

    function regUser(Request $req){

        // $req->validate([

            

        // ]);

        $usertable = new usertable;
        $usertable->name = $req->name;
        $usertable->agencyname = $req->agencyname;
        $usertable->loginid = $req->loginid;
        $usertable->email = $req->email;
        $usertable->alternateemail = $req->alternateemail;
        $usertable->mobile = $req->mobile;
        $usertable->phone = $req->phone;
        $usertable->gstno = $req->gstno;
        $usertable->panno = $req->panno;
        $usertable->city = $req->city;
        $usertable->state = $req->state;
        $usertable->pincode = $req->pincode;
        $usertable->referredby = $req->referredby;
        $usertable->save();

        return redirect('');
        
    }

    function getTotalCost(Request $req){
         return $req->all();
    }

    function getTotalCost2(Request $req){
        return $req->all();
     }

  
}
