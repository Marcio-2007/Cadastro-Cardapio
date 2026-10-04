<?php
	function redec(){
		header('location: sucessoteste.php');
		exit();
	}
	
	session_start();
		if ($_SERVER['REQUEST_METHOD'] == "POST") {
			
			$user = $_POST['user'];
			$pass = $_POST['pass'];
			
			$_SESSION['dados'] = ["user" => $_SESSION['nome'], "password" => $_SESSION['senha']];
			
			$_SESSION['caminho'] = "user/perfil.json";
			
			$consulta = file_get_contents($_SESSION['caminho']);
			$jsonarq = json_decode($consulta, True);
			
			if($jsonarq['user'] == $user && $jsonarq['password'] == $pass) {
				
				redec();
			}
		}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <dialog id="janela">
        <div id="info"></div>   
    </dialog>
    <main id="esq">
        <header>
            <div id="title">
                <p>Login</p>
            </div>
        </header>

        <form action="" method="POST">
          
			<div class="campo">
				<div class="iconizinho">
					<img class="img" src="img/profile.png" alt="logo">
				</div>
				<input type="text" id="nm" name="user" placeholder="Nome" required/>
			</div>
			
			<div class="campo">
				<div class="iconizinho">
					<img class="img" src="img/lock.png" alt="logo">
				</div>
				<input type="password" id="sh" name="pass" placeholder="Senha" required/>
			</div>

            <div id="botao">
                <button>Entrar</button>
            </div>

        </form>

        <div id="link">
            <a href="redef.php" target="_self">Redefinir Cadastro?</a>
        </div>
    </main>

    <aside id="background">
    </aside>

    <div id="logo">
        <img src="img/logo.png" alt="logo">
    </div>

</body>
</html>