<?php
	function redec(){
		header('location: login.php');
		exit();
	}
	
	session_start();
		if ($_SERVER['REQUEST_METHOD'] == "POST") {
			
			$olduser = $_POST['olduser'];
			$oldpass = $_POST['oldpass'];
			$newuser = $_POST['newuser'];
			$newpass = $_POST['newpass'];
			$novosdados = ["user" => $newuser, "password" => $newpass];
			$ndadosjson = json_encode($novosdados,JSON_PRETTY_PRINT).PHP_EOL;
			
			$_SESSION['caminho'] = "user/perfil.json";
			
			$consulta = file_get_contents($_SESSION['caminho']);
			$jsonarq = json_decode($consulta, True);
			
			if($jsonarq['user'] == $olduser && $jsonarq['password'] == $oldpass) {
				file_put_contents($_SESSION['caminho'], $ndadosjson);
				redec();
			}
		}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Redefinir cadastro</title>
    <link rel="stylesheet" href="css/redef.css">
</head>
<body>
    <dialog id="janela">
        <div id="info"></div>   
    </dialog>
    <main id="esq">
        <header>
            <div id="title">
                <p>Redefinir Cadastro</p>
            </div>
            <div id="exp">
                <p>Para redefinir seu cadastro, insira seu nome e senha do cadastro atual. Após isso, siga com as novas credênciais.</p>
            </div>
        </header>

        <form action="" method="POST">

            <div class="linha">

                <div class="cola">
                    <img class="img" src="img/profile.png" alt="logo">
                    <label for="nm">Nome de perfíl atual:</label>
                    <input type="text" id="nm" name="olduser" placeholder="Nome" required/>
                </div>


                <div class="cola">
                    <img class="img" src="img/lock.png" alt="logo">
                    <label for="sh">Senha atual:</label>
                    <input type="password" id="sh" name="oldpass" placeholder="Senha" required/> 
                </div>
            </div>

            <div class="linha">
                
                <div class="cola">
                    <img class="img" src="img/profile.png" alt="logo">
                    <label for="nm2">Novo nome de perfíl:</label>
                    <input type="text" id="nm2" name="newuser" placeholder="Nome" required/>
                </div>


                <div class="cola">
                    <img class="img" src="img/lock.png" alt="logo">
                    <label for="sh2">Nova senha:</label>
                    <input type="password" id="sh" name="newpass" placeholder="Senha" required/>
                </div>
            </div>

            <div id="botao">
                <button id="submit">Confirmar</button>
            </div>

        </form>
        
        <div id="link">
            <a href="login.php" target="_self">Voltar?</a>
        </div>

    </main>

    <aside id="background">
    </aside>

    <div id="logo">
        <img src="img/logo.png" alt="logo">
    </div>
      
</body>
</html>