<?php
try {
    $dsn = 'mysql:host=localhost;dbname=tester';
    $username = 'root';
    $password = '';

    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Error handling

} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>