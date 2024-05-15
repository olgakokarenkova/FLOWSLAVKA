<?php
	session_start();
	include "connect.php";

	$sql = "SELECT * FROM `products` WHERE `count` > 0 ORDER BY `created_at` DESC LIMIT 5";
	if(!$result = $connect->query($sql))
		return die ("Ошибка получения данных: ". $connect->error);

	$data = "";
	while($row = $result->fetch_assoc())
		$data .= sprintf('
			<div class="slide col">
				<img src="%s" alt="" />
				<h3><a href="product.php?id=%s">%s</a></h3>
			</div>
		', $row["path"], $row["product_id"], $row["name"]);

	if($data == "")
		$data = '<h3 class="text-center">Товары отсутствуют</h3>';

	include "header.php";
?>

	<main>
	<header class="header">
		<div class="header-one">
			<p class="logo">FLOWS LAVKA</p>			
		</div>
		<div class="deviz">
			<p class="deviz-text">СОЗДАЁМ  ЛЮБОВЬ ЧЕРЕЗ  ЦВЕТЫ</p>
		</div>
	</header>
		<div class="content">
			
			<div class="head">Новинки компании</div>

			<div id="slider">
				<div class="slides">
					<?= $data ?>
				</div>
			</div>
	</div>
	<div class="section-promo">
		<p class="promo-text">О  НАС</p>
		<div class="promo">
			<div class="promo-img"></div>
			<div class="section-promo-text">
				<p class="promo-text-1">БОЛЬШЕ ЧЕМ ПРОСТО ЦВЕТЫ</p>
				<p class="promo-text-2">FLOWS LAVKA - не просто цветочный магазин. Цветочная мастерская помогает реализовать самые смелые флористические пожелания клиентов.</p>
			</div>
		</div>

			<div class="head" id="register">Регистрация</div>
			<form action="controllers/register.php" method="POST">
				<input type="text" placeholder="Имя" name="name" pattern="[а-яА-ЯёЁ\s\-]+" required>
				<input type="text" placeholder="Фамилия" name="surname" pattern="[а-яА-ЯёЁ\s\-]+" required>
				<input type="text" placeholder="Отчество" name="patronymic" pattern="[а-яА-ЯёЁ\s\-]+">
				<input type="text" placeholder="Логин" name="login" pattern="[a-zA-Z0-9\-]+" required>
				<input type="email" placeholder="Email" name="email" required>
				<input type="password" placeholder="Пароль" name="password" pattern=".{6,}" required>
				<input type="password" placeholder="Повтор пароля" name="password_repeat" required>
				<div class="part">
					<input type="checkbox" name="rules" required>
					<p>Согласие с правилами регистрации</p>
				</div>
				<button class="register" >Зарегистрироваться</button>
			</form>

			<div class="head" id="login">Вход</div>
			<form action="controllers/login.php" method="POST">
				<input type="text" placeholder="Логин" name="login" required>
				<input type="password" placeholder="Пароль" name="password" required>
				<button class="register">Войти</button>
			</form>

		</div>
	</main>

	<script src="scripts/slider.js"></script>

<?php include "footer.php" ?>