<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="css/cdt.css">
</head>
<body>
    <dialog id="janela">
        <div id="info"></div>   
    </dialog>
    <main id="esq">
        <header>
            <div id="title">
                <p>Cadastro</p>
            </div>
            <div id="exp">
                <p>Essa etapa é necesária uma única vez,<br> a menos que você deseje redefinir sua senha e nome de perfil.</p>
            </div>
        </header>

        <form method="POST" action="">

            <img class="img" src="img/profile.png" alt="logo">
            <label for="nm">Crie um nome de perfíl:</label>   
            <input type="text" id="nm" name="usuario" placeholder="Nome" required/>
            
            <img class="img" src="img/lock.png" alt="logo">
            <label for="sh">Crie uma senha:</label>
            <input type="password" id="sh" name="numeros" placeholder="Senha" required/>
            
            <div id="botao">
                <button>Confirmar</button>
            </div>
            
        </form>
    </main>

    <aside id="background">
    </aside>

    <div id="logo">
        <img src="img/logo.png" alt="logo">
    </div>

<?php

	if ($_SERVER['REQUEST_METHOD'] == "POST") {
	
		$nome = $_POST['usuario'];
		$senha = $_POST['numeros'];
		$dados = ["user" => $nome, "password" => $senha];
		$jsfilho = json_encode($dados,JSON_PRETTY_PRINT).PHP_EOL;
		
		$handle = fopen("perfil.json","a");
		fwrite($handle, $jsfilho); 
		fclose($handle);
		
		header('location:http://localhost/Projetos/cadastro/login.php');
		exit();
	}

?>

</body>
</html>