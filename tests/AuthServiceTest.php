<?php
namespace Tests;

use PHPUnit\Framework\TestCase;
use App\AuthService;
use App\UserRepository;

class AuthServiceTest extends TestCase {
    
    public function testLoginSuccess() {
        // 1. Membuat Mock / Stub untuk UserRepository (Test Double)
        $userRepositoryStub = $this->createMock(UserRepository::class);
        
        // 2. Mengatur perilaku Stub: Jika getUserByEmail dipanggil dengan 'test@email.com', kembalikan data palsu
        $userRepositoryStub->method('getUserByEmail')
                           ->willReturn([
                               'id' => 1,
                               'email' => 'test@email.com',
                               'password' => password_hash('rahasia123', PASSWORD_DEFAULT)
                           ]);
                           
        // 3. Menginjeksikan Stub ke dalam AuthService
        $authService = new AuthService($userRepositoryStub);
        
        // 4. Melakukan pengujian (Assertion)
        $result = $authService->login('test@email.com', 'rahasia123');
        
        // Memastikan hasil login bukan false, dan data email cocok
        $this->assertNotFalse($result);
        $this->assertEquals('test@email.com', $result['email']);
    }
    
    public function testLoginFailedWrongPassword() {
        // Membuat Mock / Stub untuk UserRepository
        $userRepositoryStub = $this->createMock(UserRepository::class);
        
        $userRepositoryStub->method('getUserByEmail')
                           ->willReturn([
                               'id' => 1,
                               'email' => 'test@email.com',
                               'password' => password_hash('rahasia123', PASSWORD_DEFAULT)
                           ]);
                           
        $authService = new AuthService($userRepositoryStub);
        
        // Memasukkan password yang salah
        $result = $authService->login('test@email.com', 'salahpassword');
        
        // Memastikan hasil login adalah false
        $this->assertFalse($result);
    }
    
    public function testLoginFailedEmailNotFound() {
        $userRepositoryStub = $this->createMock(UserRepository::class);
        
        // Jika email tidak ditemukan, return null
        $userRepositoryStub->method('getUserByEmail')
                           ->willReturn(null);
                           
        $authService = new AuthService($userRepositoryStub);
        
        $result = $authService->login('notfound@email.com', 'apapun');
        
        $this->assertFalse($result);
    }
}
