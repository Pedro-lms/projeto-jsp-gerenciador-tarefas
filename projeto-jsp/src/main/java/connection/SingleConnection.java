package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String banco = "jdbc:postgresql://localhost:5432/postgres?autoReconnect=true";
	private static String user = "postgres";
	private static String senha ="12345678";
	private static Connection connection = null; //Aqui eu instancio inicialmente nulo para poder aclopar fracamente depois
	
	public static Connection getConnection() { /*Retorna a conexão já iniciada*/
		return connection;
	}
	
	static {
		conectar(); //Pode dar erro
	}
	
	public SingleConnection() { /*Quando tiver uma instância, vai conectar*/
		conectar();
	}
	
	private static void conectar() {
		
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver"); /*Carrega o driver de conexão do banco*/
				DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false); /*Para não haver mudanças aleatórias no banco*/
			}
		}catch(Exception e) {
			e.printStackTrace(); /*Mostrar caso haja erro ao conectar*/
		}
	}
}
