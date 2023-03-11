<?php

namespace App\Providers;
use App\ContactInfo;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Notification;
use App\Patient;
use App\Doctor;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        
        // View::composer(['*'], function($view){
        //      $cont = ContactInfo::first();
        //     $view->with('contact',$cont);
        //     dd($cont);
        // });

        $count=0;
        $not=Notification::get(); 
        foreach ($not as $item) {
            if($item->read_at ==''){
                $count +=1;
            }else{
                $count +=0;
            }
        }    
        $notifications= Doctor::with(array('unreadnotifications'=>function($query){
                                    $query;
                                }))->get(); 
        // dd($notifications);
        view()->share('count', $count);

        view()->share('notifications', $notifications);

        $patient_notifications= Patient::with(array('unreadnotifications'=>function($query){
                                    $query;
                                }))->get();                         
        view()->share('patient_notifications', $patient_notifications);

        $cont = ContactInfo::first();
        view()->share('contact', $cont);

    }
}
 