<?php 
namespace App\Helpers;

use Exception;
use Illuminate\Http\JsonResponse;
                                    
class Response 
{
   public static function success($data = null, $message = 'Success', $status = 200): JsonResponse
    {
        return response()->json([
            'success' => true,
            'message' => $message,
            'data'    => $data,
        ], $status);
    }

    public static function error(Exception $e, $message = 'Error occurred', $status = 500): JsonResponse
    {
        return response()->json([
            'success' => false,
            'message' => $message,
            'error'   => $e->getMessage(),
        ], $status);
    }
}