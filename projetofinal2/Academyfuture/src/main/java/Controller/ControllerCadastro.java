package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cadastro;


import java.io.IOException;
import java.util.ArrayList;

import Dao.CadastroDao;



@WebServlet(urlPatterns = {"/ler","/inserir","/select","/update","/delete"})
public class ControllerCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	CadastroDao dao = new CadastroDao();
	Cadastro cadastro = new Cadastro();
    public ControllerCadastro() {
        super();
        // TODO Auto-generated constructor stub
    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String action = request.getServletPath();
    System.out.println(action);
    
    if (action.equals("/ler")) {
    	contatos(request,response);
    } else if (action.equals("/inserir")) {
    	novoCliente(request,response);
    } else if (action.equals("/select")) {
    	listarCliente(request,response);
    } else if (action.equals("/update")) {
    	editarCliente(request,response);
    } else if (action.equals("/delete")) {
    	removerCliente(request,response);	
    } else {
    	response.sendRedirect("cadastros.jsp");
    }
}

protected void contatos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//Criar uma objeto do tipo lista para receber os clientes do metodo listarClientes
	ArrayList<Cadastro> lista = dao.listarClientes();
	
	//Enviar os dados para a p�gina clientes.jsp
	request.setAttribute("cadastros", lista);
	RequestDispatcher rd = request.getRequestDispatcher("cadastros.jsp");
	rd.forward(request,response);
	
}

protected void novoCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	cadastro.setNome(request.getParameter("nome"));
	cadastro.setDataNascimento(request.getParameter("dataNascimento"));
	cadastro.setCidade(request.getParameter("cidade"));
	cadastro.setCpf(request.getParameter("cpf"));
	cadastro.setEndereço(request.getParameter("endereço"));
	cadastro.setBairro(request.getParameter("bairro"));
	cadastro.setEstado(request.getParameter("estado"));
	cadastro.setCep(request.getParameter("cep"));
	cadastro.setCelular(request.getParameter("celular"));
	cadastro.setEmail(request.getParameter("email"));
	cadastro.setSenha(request.getParameter("senha"));
	cadastro.setEscolha_voluntario(request.getParameter("escolha_voluntario"));
	cadastro.setEscolha_participante(request.getParameter("escolha_participante"));
	
	//Chamar o m todo inserirCliente do DAO 
	dao.inserirCliente(cadastro);
	//Redirecionar a tela
	response.sendRedirect("ler");
}


	

protected void listarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//Pegar ID do cliente selecionado
	String cod_pessoa= request.getParameter("cod_pessoa");
	cadastro.setCod_pessoa(cod_pessoa);
	//Executar o m�todo selecionarCliente do DAO
	dao.selecionarCliente(cadastro);
	//Colocar os dados no objeto Cliente
	request.setAttribute("cod_pessoa", cadastro.getCod_pessoa());	
	request.setAttribute("nome", cadastro.getNome());
	request.setAttribute("dataNascimento", cadastro.getDataNascimento());
	request.setAttribute("cidade", cadastro.getCidade());
	request.setAttribute("cpf", cadastro.getCpf());
	request.setAttribute("endereço", cadastro.getEndereço());
	request.setAttribute("bairro", cadastro.getBairro());
	request.setAttribute("estado", cadastro.getEstado());
	request.setAttribute("cep", cadastro.getCep());
	request.setAttribute("celular", cadastro.getCelular());
	request.setAttribute("email", cadastro.getEmail());
	request.setAttribute("senha", cadastro.getSenha());
	request.setAttribute("escolha_voluntario", cadastro.getEscolha_voluntario());
	request.setAttribute("escolha_participante", cadastro.getEscolha_participante());
	
	// Enviar documento para a p�gina editar.jsp
	RequestDispatcher rd = request.getRequestDispatcher("atualize.jsp");
	rd.forward(request, response);	}

protected void editarCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//Popular os dados no objeto cliente
	cadastro.setCod_pessoa(request.getParameter("cod_pessoa"));
	cadastro.setNome(request.getParameter("nome"));
	cadastro.setDataNascimento(request.getParameter("dataNascimento"));
	cadastro.setCidade(request.getParameter("cidade"));
	cadastro.setCpf(request.getParameter("cpf"));
	cadastro.setEndereço(request.getParameter("endereço"));
	cadastro.setBairro(request.getParameter("bairro"));
	cadastro.setEstado(request.getParameter("estado"));
	cadastro.setCep(request.getParameter("cep"));
	cadastro.setCelular(request.getParameter("celular"));
	cadastro.setEmail(request.getParameter("email"));
	cadastro.setSenha(request.getParameter("senha"));
	cadastro.setEscolha_voluntario(request.getParameter("escolha_voluntario"));
	cadastro.setEscolha_participante(request.getParameter("escolha_participante"));
	//Alterar o cliente usando o DAO
	dao.alterarCliente(cadastro);
	//Redirecionar para o documentp clientes.jsp (com os dados atualizado)
	response.sendRedirect("ler");		
}

protected void removerCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// Recebe o id do clienet a ser excluido do validador.js 
	String cod_pessoa = request.getParameter("cod_pessoa");
	// Definir idcli a ser excluido
	cadastro.setCod_pessoa(cod_pessoa);
	// executar o metodo de excluir no DAO
	dao.deletarCliente(cadastro);
	// Redirecionar para o documento clientes.jsp (como os dados atualizados)
	response.sendRedirect("ler");
}

}
