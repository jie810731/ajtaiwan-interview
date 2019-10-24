<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Socialite;

class OauthController extends Controller
{
    public function login()
    {
        return Socialite::driver('google')
            ->redirect();

    }

    public function handleProviderCallback()
    {
        $socialite_user = Socialite::driver('google')->user();
        $socialite_user_email = $socialite_user->getEmail();
        $socialite_user_name = $socialite_user->getName();

        $user = User::where('email', $socialite_user_email)->first();

        if (!$user) {
            $user = User::create([
                'name' => $socialite_user_name,
                'email' => $socialite_user_email,
                'password' => bcrypt(Str::random()),
            ]);
        }
        Auth::login($user);

        return redirect(route('home'));

    }
}
