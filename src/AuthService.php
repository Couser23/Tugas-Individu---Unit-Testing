<?php
namespace App;

class AuthService {
    private $userRepository;

    public function __construct(UserRepository $userRepository) {
        $this->userRepository = $userRepository;
    }

    /**
     * Memvalidasi login user
     * @param string $email
     * @param string $password
     * @return array|false Data user jika sukses, false jika gagal
     */
    public function login($email, $password) {
        $user = $this->userRepository->getUserByEmail($email);

        if ($user && password_verify($password, $user['password'])) {
            return $user;
        }

        return false;
    }
}
