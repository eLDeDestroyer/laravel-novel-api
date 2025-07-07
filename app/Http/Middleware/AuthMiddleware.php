<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AuthMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->getMethod() === 'OPTIONS') {
            return response()->json([], 204);
        }

        if(!Auth::check()){
           return response()->json([
                'status' => 'unauthorized',
                'message' => 'Silakan login terlebih dahulu'
            ], 401);
        }
        return $next($request);
    }
}
