<?php
namespace App;

class UserRepository {
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    /**
     * Mengambil data user berdasarkan email
     */
    public function getUserByEmail($email) {
        // Melindungi dari SQL Injection dasar
        $email_safe = mysqli_real_escape_string($this->conn, $email);
        
        $query = "SELECT * FROM users WHERE email='$email_safe'";
        $result = mysqli_query($this->conn, $query);
        
        if ($result && mysqli_num_rows($result) > 0) {
            return mysqli_fetch_assoc($result);
        }
        
        return null;
    }
}
