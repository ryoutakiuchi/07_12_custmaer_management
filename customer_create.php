<?php
// var_dump($_POST);
// exit();
if (
    !isset($_POST['username']) || $_POST['username'] == '' ||
    !isset($_POST['age']) || $_POST['age'] == '' ||
    !isset($_POST['sex']) || $_POST['sex'] == '' ||
    !isset($_POST['tel']) || $_POST['tel'] == '' ||
    !isset($_POST['adress']) || $_POST['adress'] == '' ||
    !isset($_POST['item']) || $_POST['item'] == ''
) {
    exit('ParamError');
}

$username = $_POST['username'];
$age = $_POST['age'];
$sex = $_POST['sex'];
$tel = $_POST['tel'];
$adress = $_POST['adress'];
$item = $_POST['item'];

// var_dump($age);
// exit();


// DB接続情報
$dbn = 'mysql:dbname=gsacf_d07_12;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    exit();
}

$sql = 'INSERT INTO customer_management_table2(id, username, age, sex, tel, adress, item)
        VALUES(NULL,:username,:age,:sex,:tel,:adress,:item)';
var_dump($age);
exit();

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':username', $username, PDO::PARAM_STR);
$stmt->bindValue(':age', $age, PDO::PARAM_STR);
$stmt->bindValue(':sex', $sex, PDO::PARAM_STR);
$stmt->bindValue(':tel', $tel, PDO::PARAM_STR);
$stmt->bindValue(':adress', $adress, PDO::PARAM_STR);
$stmt->bindValue(':item', $item, PDO::PARAM_STR);
$status = $stmt->execute();

// var_dump($sql);
// exit();

if ($status == false) {
    $error = $stmt->errorInfo(); // データ登録失敗次にエラーを表示 exit('sqlError:'.$error[2]);
} else {
    // 登録ページへ移動
    header('Location:customer_input.php');
}
