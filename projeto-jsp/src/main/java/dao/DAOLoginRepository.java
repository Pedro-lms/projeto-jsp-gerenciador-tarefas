package dao;

import java.sql.Connection;

import connection.SingleConnection;
import model.ModelLogin;

public class DAOLoginRepository {

	private Connection connection;
	
	public DAOLoginRepository() {
		connection = SingleConnection.getConnection();
	}
	
	/*public boolean validarAutenticacao(ModelLogin modelLogin) {
		
		 
	}*/
}
