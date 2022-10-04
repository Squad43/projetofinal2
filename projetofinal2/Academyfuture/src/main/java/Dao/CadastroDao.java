package Dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Cadastro;




public class CadastroDao {
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/academyfuturo";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "81630316";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	
	private Connection conectar() throws ClassNotFoundException {
		Connection con = null;	
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}		
	}
	
	public void inserirCliente(Cadastro cadastro) {
		//Criar um objeto para receber o camando em SQL
		String sql = "insert into cadastro (nome,dataNascimento,cidade,cpf,endereço,bairro,estado,cep,celular,email,senha,escolha_voluntario, escolha_participante) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";		
		try {
			//Abrir a conex�o com o BD
			Connection con = conectar();
			//Criar um stattement
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1,cadastro.getNome());
			stm.setString(2,cadastro.getDataNascimento());
			stm.setString(3,cadastro.getCidade());
			stm.setString(4,cadastro.getCpf());
			stm.setString(5,cadastro.getEndereço());
			stm.setString(6,cadastro.getBairro());
			stm.setString(7,cadastro.getEstado());
			stm.setString(8,cadastro.getCep());
			stm.setString(9,cadastro.getCelular());
			stm.setString(10,cadastro.getEmail());
			stm.setString(11,cadastro.getSenha());
			stm.setString(12,cadastro.getEscolha_voluntario());
			stm.setString(13,cadastro.getEscolha_participante());
			//Executar a Query
			stm.execute();
			//Fechar a conex�o com o BD
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}		
	}
	
	
    public ArrayList<Cadastro>	listarClientes() {
    	//Criar a lista de clientes com os dados dos clientes
    	ArrayList<Cadastro> cadastros = new ArrayList<>();
    	
    	//Criar um objeto para receber o camando em SQL
    	String sql = "select * from cadastro order by nome";
    	try {
    		//Abrir a conex�o com o BD
    		Connection con = conectar();
    		//Criar o statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		ResultSet result = stm.executeQuery();
    		//Preencher os dados da lista clientes
    		while (result.next()) {
    			String cod_pessoa  = result.getString(1);
    			String nome = result.getString(2);
    			String dataNascimento = result.getString(3);
    			String cidade = result.getString(4);
    			String cpf = result.getString(5);
    			String endereço = result.getString(6);
    			String bairro = result.getString(7);
    			String estado = result.getString(8);
    			String cep = result.getString(9);
    			String celular = result.getString(10);
    			String email = result.getString(11);
    			String senha = result.getString(12);
    			String escolha_voluntario = result.getString(13);
    			String escolha_participante = result.getString(14);
    			
    			cadastros.add(new Cadastro (cod_pessoa,nome,dataNascimento,cidade,cpf,endereço,bairro,estado,cep,celular,email,senha,escolha_voluntario, escolha_participante));
    		}
    		//Fechar a conex�o com o BD
    		con.close();
    		return cadastros;
    	} catch (Exception e) {
    		System.out.println(e);
    		return null;
    	}
    	
    }
    
    public void selecionarCliente(Cadastro cadastro) {
    	//Criar um objeto para receber o camando em SQL
    	String sql = "select * from cadastro where cod_pessoa = ?";
    	
    	try {
    		//Abrir a conex o com o BD
    		Connection con = conectar();
    		//Criar statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		stm.setString(1, cadastro.getCod_pessoa());
    		//Executar o statement
    		ResultSet result = stm.executeQuery();
    		//Preencher os dados do cliente
    		while (result.next()) {
    			
    			cadastro.setCod_pessoa(result.getString(1));
    			cadastro.setNome(result.getString(2));
    			cadastro.setDataNascimento(result.getString(3));
    			cadastro.setCidade(result.getString(4));
    			cadastro.setCpf(result.getString(5));
    			cadastro.setEndereço(result.getString(6));
    			cadastro.setBairro(result.getString(7));
    			cadastro.setEstado(result.getString(8));
    			cadastro.setCep(result.getString(9));
    			cadastro.setCelular(result.getString(10));
    			cadastro.setEmail(result.getString(11));
    			cadastro.setSenha(result.getString(12));
    			cadastro.setEscolha_voluntario(result.getString(13));
    			cadastro.setEscolha_participante(result.getString(14));
    		}
    		con.close();
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    }

    public void alterarCliente(Cadastro cadastro) {
    	//Criar um objeto para receber o camando em SQL
    	String sql = "update cadastro set nome=?,dataNascimento=?,cidade=?,cpf=?,endereço=?,bairro=?,estado=?,cep=?,celular=?,email=?,senha=?,escolha_voluntario=?, escolha_participante=? where cod_pessoa=?";
    	
    	try {
    		//Abrir a conex�o com o BD
    		Connection con = conectar();
    		//Criar statement
    		PreparedStatement stm = con.prepareStatement(sql);
    		stm.setString(1, cadastro.getNome());
    		stm.setString(2, cadastro.getDataNascimento());
    		stm.setString(3, cadastro.getCidade());
    		stm.setString(4, cadastro.getCpf());
    		stm.setString(5, cadastro.getEndereço());
    		stm.setString(6, cadastro.getBairro());
    		stm.setString(7, cadastro.getEstado());
    		stm.setString(8, cadastro.getCep());
    		stm.setString(9, cadastro.getCelular());
    		stm.setString(10, cadastro.getEmail());
    		stm.setString(11, cadastro.getSenha());
    		stm.setString(12, cadastro.getEscolha_voluntario());
    		stm.setString(13, cadastro.getEscolha_participante());
    		stm.setString(14, cadastro.getCod_pessoa());
    		//Executar o statement
    		stm.executeUpdate();
    		//Fechar a conex�o
    		con.close();
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    }
    
	public void deletarCliente(Cadastro cadastro) {
		// Criar o objeto que vai receber o comando em SQL
		String sql = "delete from cadastro where cod_pessoa=?";		
		try {
			// Abrir uma conex�o com o BD
			Connection con = conectar();
			//Criar o statement 
			PreparedStatement stm = con.prepareStatement(sql);
			stm.setString(1, cadastro.getCod_pessoa());
			//Executar o statement
			stm.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}}





    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
	