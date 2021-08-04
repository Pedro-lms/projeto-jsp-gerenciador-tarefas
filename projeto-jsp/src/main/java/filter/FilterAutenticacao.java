package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import connection.SingleConnection;

/**
 * Servlet Filter implementation class FilterAutenticacao
 */
@WebFilter("/FilterAutenticacao") /*
									 * Intercepta todas as requisições do sistemaque vierem do projeto ou do
									 * mapeamento
									 */
public class FilterAutenticacao implements Filter {

	private static Connection connection; /* Eu poderia chamar o Single Connection aqui. Veja abaixo */

	public FilterAutenticacao() {
	}

	/*
	 * Encerra os processos quando o servidor é parado Finaliza tambéma conexão
	 * com o banco de dados
	 */
	public void destroy() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*
	 * Intercepta todas as requisições e resposta do sistema Tudo feito no sistema
	 * passa pelo doFilter Validação e autenticação Dar commit e rollback
	 * Validar e fazer o redirecionamento das p�ginas
	 */
	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain) throws IOException, ServletException {
		try {
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session = req.getSession();
			
			String usuarioLogado = (String) session.getAttribute("usuario");
			
			String urlParaAutenticar = req.getServletPath(); /*Url que no momento est� sendo acessada*/
			/*Caso n�o esteja logado, redireciona para tela de login*/
			
			if(usuarioLogado == null ||/* usuarioLogado != null && usuarioLogado.isEmpty() Verificar depois
			&& */!urlParaAutenticar.equalsIgnoreCase("principal/ServletLogin")) {/*N�o est� logado*/
				RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
				request.setAttribute("msg","Por favor, realize o login!");
				redireciona.forward(request, response);
				return; /*Para a execu��o e redireciona o login*/
			}else {
				chain.doFilter(request, response);
			}
			
			connection.commit(); /*Comita as altera��es no banco de dados*/
			
		}catch (Exception e) {
			e.printStackTrace();
			try {
				connection.rollback();
			}catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		
	}

	/*
	 * Iniciaos processos quando o servidor sobre o projeto Inicia a conexão com o
	 * banco de dados
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		connection = SingleConnection.getConnection();
	}

}
