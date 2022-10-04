<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Nome do site (vai aparecer o nome do site na aba inicial)-->
    <title>Academy Futuro</title>

    <!--Adicionando o Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


    <!--Aqui é o link externo da pasta de CSS-->
    <link rel="stylesheet" href="assets/css/estilo.css">

    <!--Aqui insiro um icon para aparecer na aba da janela do site-->
    <link rel="shortcut icon" href="assets/logo/Logo_1.jpeg" type="image/x-icon">

    <!--Adicionando o Java Script-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>

     

</head>

<body style="background-color:black ;">

    
             <!---Início do menu-->
    <div style="background-color: #ef9539;">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top sticky-top dropdown">
    <div class="container-fluid" style="height: 80px;">
      <a class="navbar-brand" href="index.html"></a><img src="assets/logo/Logo_1-removebg-preview.png" id="foto1" alt="logo Academy Futuro">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse bg-dark" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" id="link" style="color: #ef9539" href="index.html"><strong>Página inicial</strong></a>
          </li>
          <li class="nav-item">
           <a class="nav-link" id="link" style="color: #ef9539" href="projeto.html"><strong>Projetos</strong></a>
         </li>
          <li class="nav-item">
           <a class="nav-link" id="link" style="color: #ef9539" href="historia.html"><strong>História</strong></a>
          </li>
         <li class="nav-item">
            <a class="nav-link" id="link" style="color: #ef9539" href="#faleConosco"><strong>Fale conosco</strong></a>
          </li>
          <li class="nav-item">
           <a class="nav-link" id="link" style="color: #ef9539" href="cadastro.html"><strong>Cadastre-se</strong></a>
         </li>
        </ul>
      </div>
    </div>
  </nav>
  <!---Fim do menu-->

    <!-- Formulário-->


<section class = "formulario">

    <form name="frmCliente" action="update"style=" padding:40px;">
    <h1>Alterar cadastro</h1>
    
        <div class="form-row">
           <div class="col-sm form-group">
                <label for="Id" style="color:black;; font-size: 25px;">Id</label>
                <input  type="text" class="form-control" id="cod_pessoa"  readonly placeholder=" cod_pessoa" name="cod_pessoa" value="<%out.print(request.getAttribute("cod_pessoa"));%>">
                
          
                <label for="Nome" style="color:black; font-size: 25px;">Nome</label>
                <input type="text" class="form-control" id="nome"  placeholder="*Nome" name="nome" value="<%out.print(request.getAttribute("nome"));%>" >
            </div>
        </div>

        <div class="form-row">
            <div class="col-sm form-group">
                <label for="Nascimento" style="color:black;; font-size: 25px;">Data de nascimento</label>
                <input type="date" class="form-control" id="Nascimento" placeholder=" *Nascimento" name="dataNascimento" value="<%out.print(request.getAttribute("dataNascimento"));%>">
            </div>
              <div class="form-row">
                <div class="col-sm form-group">
                    <label for="cidade" style="color:black;; font-size: 25px;" >Cidade</label>
                    <input type="text" class="form-control" id="cidade" placeholder=" *Cidade" name="cidade" value="<%out.print(request.getAttribute("cidade"));%>">
                </div>
             
            <div class="col-sm form-group">
                <label for="CPF" style="color:black;; font-size: 25px;">CPF</label>
                <input type="text" class="form-control" id="CPF" placeholder="*CPF" name="cpf" value="<%out.print(request.getAttribute("cpf"));%>">
            </div>
        </div>
        
        <div class="form-row">
            <div class="col-sm form-group">
                <label for="End" style="color:black;; font-size: 25px">Endereço</label>
                <input type="text" class="form-control" id="End" aria-describedby="emailHelp"
                    placeholder="*Rua/Avenida" name="endereço" value="<%out.print(request.getAttribute("endereço"));%>">
            </div>

            <div class="form-row">
                <div class="col-sm form-group">
                    <label for="bairro" style="color:black;; font-size: 25px;" >Bairro</label>
                    <input type="text" class="form-control" id="bairro" placeholder="*Bairro" name="bairro" value="<%out.print(request.getAttribute("bairro"));%>">
                </div>

            </div>
          
                <div class="col-sm form-group">
                    <label for="estado" style="color:black;; font-size: 25px;">Estado</label>
                    <input type="text" class="form-control" id="estado" placeholder="*Estado" name="estado" value="<%out.print(request.getAttribute("estado"));%>">
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col-sm form-group">
                <label for="cep" style="color:black;; font-size: 25px;">Cep</label>
                <input type="text" class="form-control" id="cep" placeholder=" *cep" name="cep" value="<%out.print(request.getAttribute("cep"));%>">
            </div>
            <div class="col-sm form-group">
                <label for="celular" style="color:black;; font-size: 25px;">Celular</label>
                <input type="text" class="form-control" id="celular" placeholder="*celular" name="celular" value="<%out.print(request.getAttribute("celular"));%>">
            </div>
        </div>
        <div class="form-row">
            <div class="col-sm form-group">

                <label for="email" style="color:black;; font-size: 25px;">Endereço de email</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="*email" name="email" value="<%out.print(request.getAttribute("email"));%>">
                
            </div>
        </div>
        <div class="form-row">
            <div class=" col-sm form-group">

                <label for="senha1" style="color:black;; font-size: 25px;">Senha</label>
                <input type="password" class="form-control" id="senha" placeholder="*Senha" name="senha" value="<%out.print(request.getAttribute("senha"));%>">

            </div>
        </div>
         <div class="form-row">
            <div class=" col-sm form-group">

                <label for="escolha_voluntario" style="color:black;; font-size: 25px;">escolha_voluntario</label>
                <input name="escolha_voluntario" onclick="habilitar()" type="text" class="form-control" id="escolha_voluntario" placeholder="escolha_voluntario" "escolha_voluntario" value="<%out.print(request.getAttribute("escolha_voluntario"));%>">

            </div>
        </div>
        
         <div class="form-row">
            <div class=" col-sm form-group">

                <label for="escolha_participante" style="color:black;; font-size: 25px;">escolha_participante</label>
                <input  name="escolha_participante" type="escolha_participante" onclick="habilitar();" class="form-control" id="escolha_participante" placeholder="*escolha_participante" "escolha_voluntario" value="<%out.print(request.getAttribute("escolha_participante"));%>">

            </div>
        </div>
        
         <div><button value="update" class="btn btn-secondary bg-dark " type="submit">
        atualizar</button></div>
        </div>
        </div>
    </div>

    </form>
</section>


    <!--Início do rodapé do site-->
    <footer id="faleConosco" style="background-color:black;">
        <h1 style="text-align:center;color: #e6633d;">FALE CONOSCO</h1>
        <hr style="color: #ebebeb;">

        <h5 style="text-align: center;color: #e6633d">FORMAS DE CONTATO</h5>
        <p style="text-align: center;color: #e6633d">conecte-se com a gente pelas redes sociais</p>

        <div class="navbar-nav1 navbar-expand-sm">
            <div class="collapse navbar-collapse" id="collapsibleNavbar1">
                <li class="nav-item1"></li><a class="nav-link" href="https://web.whatsapp.com/"><img
                        src="assets/imagens/Whatsapp.png" alt="Whatsapp" width="35" height="35" id="foto2"></a></li>
                <li class="nav-item1"></li><a class="nav-link" href="https://www.facebook.com/"><img
                        src="assets/imagens/facebook_icon.png" alt="Whatsapp" width="30" height="30" id="foto2"></a>
                </li>
                <li class="nav-item1"></li><a class="nav-link" href="https://www.instagram.com/"><img
                        src="assets/imagens/Instagram_icon.png" alt="Whatsapp" width="30" height="30" id="foto2"></a>
                </li>
                <li class="nav-item1"></li><a class="nav-link"
                    href="https://www.google.com/intl/pt-BR/account/about/"><img src="assets/imagens/gmail.png"
                        alt="Whatsapp" width="30" height="30" id="foto2"></a></li>
            </div>
        </div>

        <p style="text-align: center;color: #e6633d"><ins>Fale conosco</ins><br>academyfuturo@gmail.com<br>Tel: (31)
            3355-1111</p><br>

        <p style="text-align: center;color: #e6633d">NOSSO ENDEREÇO:<br> Rua das Flores, nº 35 - Belo Horizonte - MG
        </p>

        <hr style="color: #ebebeb;">

        <div>
            <p style="text-align: center;color: #e6633d">Academy Futuro &copy; 2022 - CNPJ. 39.888.555/0001-21 -
                Brasil
                - Criado por <strong>Squad-43</strong></p>
        </div>

    </footer>


    <!--Adicionei o Java Script-->
    <!--Java Script-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
        crossorigin="anonymous"></script>
</body>

</html>