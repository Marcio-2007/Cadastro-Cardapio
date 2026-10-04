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

        <form>

            <div class="linha">

                <div class="cola">
                    <img class="img" src="img/profile.png" alt="logo">
                    <label for="nm">Nome de perfíl atual:</label>
                    <input type="text" id="nm" name="nome" placeholder="Nome" required/>
                </div>


                <div class="cola">
                    <img class="img" src="img/lock.png" alt="logo">
                    <label for="sh">Senha atual:</label>
                    <input type="password" id="sh" name="senha" placeholder="Senha" required/> 
                </div>
            </div>

            <div class="linha">
                
                <div class="cola">
                    <img class="img" src="img/profile.png" alt="logo">
                    <label for="nm2">Novo nome de perfíl:</label>
                    <input type="text" id="nm2" name="nome_novo" placeholder="Nome" required/>
                </div>


                <div class="cola">
                    <img class="img" src="img/lock.png" alt="logo">
                    <label for="sh2">Nova senha:</label>
                    <input type="password" id="sh" name="senha_nova" placeholder="Senha" required/>
                </div>
            </div>

            <div id="botao">
                <button id="submit">Confirmar</button>
            </div>

        </form>
        
        <div id="link">
            <a href="login.html" target="_self">Voltar?</a>
        </div>

    </main>

    <aside id="background">
    </aside>

    <div id="logo">
        <img src="img/logo.png" alt="logo">
    </div>
      
</body>
</html>