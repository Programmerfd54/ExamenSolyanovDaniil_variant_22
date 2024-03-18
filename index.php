<!DOCTYPE html>
<html lang="ru">

<head>
    <?php
    $website_title = "Blog Master";
    require "blocks/head.php";
    ?>
</head>

<body>
    <?php require "blocks/header.php" ?>

    <main>
    <?php if (!isset($_COOKIE['login'])) : ?>
            Вы не в системе? Зарегистрируйтесь или авторизируйтесь на нашем сайте!
        <?php else : ?>
            <h2>Вы в системе!</h2>

        <?php endif; ?>
    </main>

    <?php require "blocks/aside.php" ?>
    <?php require "blocks/footer.php" ?>
</body>

</html>