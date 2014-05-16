
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>URL Restful API</title>
</head>
<body>
<h4>Enter a url below </h4>
@if($errors->has('url'))
<p>{{$errors->first('url')}}</p>
@endif
@if (Session::has('global'))
<p>{{Session::get('global')}}</p>
@endif
<form action="{{URL::action('short')}}" method="post">
	<input type="text" name="url" placeholder="URL" autocomplete="off"{{Input::old('url') ? ' value="'.e(Input::old('url')).'"':''}}>
	<input type="submit" value="Enter">
</form>

</body>
</html>

