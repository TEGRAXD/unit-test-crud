<?php

namespace Tests\Unit;

use App\Models\User;
use Tests\TestCase;
// use PHPUnit\Framework\TestCase;
// use Illuminate\Foundation\Testing\RefreshDatabase;

class ViewTest extends TestCase
{
    public function test_pages_login_rendered(): void
    {
        // Jika belum login maka '/' akan mengarahkan ke tampilan login karena adanya Middleware.
        $response = $this->get('/');

        $response->see('login');
    }
}
