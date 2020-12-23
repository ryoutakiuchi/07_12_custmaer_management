<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
    <form action="customer_create.php" method="POST">
        <fieldset>
            <legend>顧客管理リスト（入力画面）</legend>
            <a href="customer_read.php">一覧画面</a>
            <div>
                名前: <input type="text" name="username">
            </div>
            <div>
                年齢: <input type="number" name="age">
            </div>
            <div>
                性別: <input type="text" name="sex">
            </div>
            <div>
                TEL: <input type="tel" name="tel">
            </div>
            <div>
                住所: <input type="text" name="adress">
            </div>
            <div>
                商材: <input type="text" name="item">
            </div>
            <div>
                <button>submit</button>
            </div>
        </fieldset>
    </form>

</body>

</html>