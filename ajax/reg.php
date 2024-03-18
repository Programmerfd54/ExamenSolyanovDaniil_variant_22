<?php
$username = trim(filter_var($_POST['username'], FILTER_SANITIZE_SPECIAL_CHARS));
$email = trim(filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
$login = trim(filter_var($_POST['login'], FILTER_SANITIZE_SPECIAL_CHARS));
$pass = trim(filter_var($_POST['password'], FILTER_SANITIZE_SPECIAL_CHARS));
$fio = trim(filter_var($_POST['fio'], FILTER_SANITIZE_SPECIAL_CHARS));

$error = '';
if (strlen($username) < 2)
    $error = 'Имя должено быть не меньше 2 символов';
else if (strlen($fio) < 2)
    $error = 'Фамилия должено быть не меньше 2 символов';
else if (strlen($email) < 5)
    $error = 'Введите email';
else if (strlen($login) < 3)
    $error = 'Введите логин';
else if (strlen($pass) < 3)
    $error = 'Пароль должен быть не меньше 3 символов';

if ($error != '') {
    echo $error;
    exit();
}

require_once "../lib/mysql.php";

$salt = 'sdfh^)#4390f79sdfg3';
$pass = md5($salt . $pass);

$sql = 'INSERT INTO users(name, email, login, password, fio) VALUES(?, ?, ?, ?, ?)';
$query = $pdo->prepare($sql);
$query->execute([$username, $email, $login, $pass, $fio]);

echo "Done";
