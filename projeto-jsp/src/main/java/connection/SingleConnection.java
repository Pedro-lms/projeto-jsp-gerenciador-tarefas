package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnection {

	private static String banco = "jdbc:postgresql://localhost:5432/postgres?autoReconnect=true";
	private static String user = "postgres";
	private static String senha ="12345678";
	private static Connection connection = null; //Aqui eu instancio inicialmente nulo para poder aclopar fracamente depois
	
	public static Connection getConnection() { /*Retorna a conex�o j� iniciada*/
		return connection;
	}
	
	static {
		conectar(); //Pode dar erro
	}
	
	public SingleConnection() { /*Quando tiver uma inst�ncia, vai conectar*/
		conectar();
	}
	
	private static void conectar() {
		
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver"); /*Carrega o driver de conex�o do banco*/
				DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false); /*Para n�o haver mudan�as aleat�rias no banco*/
			}
		}catch(Exception e) {
			e.printStackTrace(); /*Mostrar caso haja erro ao conectar*/
		}
	}
}
