<!DOCTYPE html>
<html>
    <head>
        <h1>API Laravel pour projet Yowl</h1>
        <p>Serveur ok</p>
    </head>

    <body>
        <form method='post'>
            {{ csrf_field() }}
            <input type='text' name='identifiant' placeholder='login' value="{{ old('identifiant') }}">
            @if($errors->has('identifiant'))
            <p>{{ $errors->first('identifiant')}}</p>
            @endif
            <input type='mail' name='mail' placeholder='mail' value="{{ old('mail') }}">
            @if($errors->has('mail'))
            <p>{{ $errors->first('mail')}}</p>
            @endif
            <input type='password' name='password' placeholder='mot de passe'>
            @if($errors->has('password'))
            <p>{{ $errors->first('password')}}</p>
            @endif
            <input type='password' name='password_confirmation' placeholder='confirmation'>
            @if($errors->has('password_confirmation'))
            <p>{{ $errors->first('password_confirmation')}}</p>
            @endif
            <input type='submit' value='inscription'>
        </form>
    </body>
</html>