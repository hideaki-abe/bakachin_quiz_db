<?php
require 'db.php'; // データベース接続

// スコア保存処理
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // スコアをデータベースに保存
    $stmt = $pdo->prepare('INSERT INTO scores (username, score) VALUES (?, ?)');
    $stmt->execute([$_POST['username'], $_POST['score']]);
}