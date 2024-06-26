<?php
require 'db.php'; // データベース接続

// 新規登録処理
if ($_POST['action'] == 'register' && !empty($_POST['username']) && !empty($_POST['email']) && !empty($_POST['password'])) {
    // パスワードをハッシュ化
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // 新規ユーザーをデータベースに挿入
    $stmt = $pdo->prepare('INSERT INTO users (username, email, password) VALUES (?, ?, ?)');
    $stmt->execute([$_POST['username'], $_POST['email'], $password]);

    // セッションを開始し、ユーザー情報を保存
    session_start();
    $_SESSION['loggedin'] = true;
    $_SESSION['username'] = $_POST['username'];
    $_SESSION['email'] = $_POST['email'];

    // クイズページにリダイレクト
    echo "<script>window.location = 'quiz.php';</script>";
}