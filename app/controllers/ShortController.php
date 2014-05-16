<?php 

class  ShortController extends BaseController {

	public function short (){
			$validator = Validator::make(Input::all(),array(
				'url'=>'required | url | max:150')); 
			if ($validator->fails()){
				return Redirect::action('index')->withInput()->withErrors($validator); 
				}else{
					$url = Input::get('url'); 
					$code = null ; 
					$exists = Short::where('url', '=', $url ); 
					if($exists->count() === 1){
						$code = $exists->first()->code; 
					}else {

						$created = Short::create(array(
							'url'=> $url
							)); 

						if ($created){
							
							$code = base_convert($created->id, 10, 36); 
							Short::where('id','=',$created->id)->update(array(
								'code'=> $code
								)); 
						}
					}
				if($code){
					//redirect home
					return Redirect::action('index')->with('global','Great Success, Your url has been created 
						<a href="'.URL::action('get',$code).'">'.URL::action('get',$code).'</a>');
				}
			}
				return Redirect::action('index')->with('global','Error Has Occured'); 
	}
	public function get ($code){

		$link = Short ::where ('code','=',$code); 
		if ($link->count()===1){
			return Redirect::to($link->first()->url); 
		}
		return Redirect::action('index')->with('global','Error has Occured');
	}

}
