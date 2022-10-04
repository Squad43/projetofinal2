<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.Cadastro" %>
<%@ page import="java.util.ArrayList"  %>
<%
	ArrayList<Cadastro> lista = (ArrayList<Cadastro>) request.getAttribute("cadastros");
%>

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


<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: }
</style>
     

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
 
         <h1 align="center">Lista de cadastro</h1>
         <div style="overflow-x:auto;">
 
  
	<table>
	
		<thead>
			<tr align="center">
				<th>ID</th>
				<th>Nome</th>
				<th>Nascimento</th>
				<th>Cidade</th>
				<th>Cpf</th>
				<th>Endereço</th>
				<th>Bairro</th>
				<th>Estado</th>
				<th>Cep</th>
				<th>Celular</th>
				<th>Email</th>
				<th>Senha</th>
				<th>Escolha_voluntario</th>
				<th>Escolha_participante</th>
				<th>Opções</th>
			</tr>
		</thead>
		
		<tbody>
			<%for (int i=0 ; i < lista.size() ; i++) { %>
			
			<tr>
				
				   <td><%=lista.get(i).getCod_pessoa() %></td>
					<td><%=lista.get(i).getNome() %></td>
					<td><%=lista.get(i).getDataNascimento() %></td>
					<td><%=lista.get(i).getCidade() %></td>
					<td><%=lista.get(i).getCpf() %></td>
					<td><%=lista.get(i).getEndereço() %></td>
					<td><%=lista.get(i).getBairro() %></td>
					<td><%=lista.get(i).getEstado() %></td>
					<td><%=lista.get(i).getCep() %></td>
					<td><%=lista.get(i).getCelular() %></td>
					<td><%=lista.get(i).getEmail() %></td>
					<td><%=lista.get(i).getSenha() %></td>
					<td><%=lista.get(i).getEscolha_voluntario() %></td>
					<td><%=lista.get(i).getEscolha_participante() %></td>
					<td><a href="select?cod_pessoa=<%=lista.get(i).getCod_pessoa()%>">Editar</a> 
					<a href="delete?cod_pessoa=<%=lista.get(i).getCod_pessoa()%>">Excluir</a></td>
					
				</tr> 
			<%} %>
		</tbody>
	</table>

	</div>

  
  
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