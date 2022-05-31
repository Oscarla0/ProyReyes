package com.ies.baroja;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.Usuario;
import com.model.Reyes;
import com.model.Caramelos;
import com.model.Lugar;

/**
 * Servlet implementation class ServletForm
 */
@WebServlet("/ServletForm")
public class ServletForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */


	
	// Buscar la parte de usuario
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			System.out.println("Inicio doPost()");
			if (request.getParameter("email1") != null) {
				loginUsuario(request, response);
			}
			else if (request.getParameter("dni") != null) {
				System.out.println("hola");
				altaReyes(request, response);
			}
			else if (request.getParameter("dni1") != null) {
				System.out.println("hola");
				altaReyesad(request, response);
			}
			else if (request.getParameter("pabellon") != null) {
				System.out.println("hola");
				altaLugar(request, response);
			}
			else if (request.getParameter("pabellons") != null) {
				System.out.println("hola");
				altaCaramelos(request, response);
			}
			
			else if(request.getParameter("cerrado") != null) {
				cerrarsesion(request,response);
			}
			else {
				System.out.println("Error en servlet: opción no válida");
				MostrarError(response, "opción incorrecta");
			}

		} catch (Exception ex) {
			System.out.println("Error en servlet");
			ex.printStackTrace();
			MostrarError(response, ex.getMessage());
		}
	}
	private static void altaReyes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Reyes Reyes = new Reyes(request.getParameter("dni"), request.getParameter("apellido"),
				request.getParameter("nombre"), request.getParameter("pwd"),request.getParameter("email"),
				request.getParameter("reyes"));
		System.out.println( request.getParameter("reyes"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarReyes(Reyes);
		response.sendRedirect("listado.jsp");
		
		/** 3- Mostrar resultado por pantalla */
	}
	private static void altaReyesad(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Reyes Reyes = new Reyes(request.getParameter("dni1"), request.getParameter("apellido1"),
				request.getParameter("nombre1"), request.getParameter("pwd1"),request.getParameter("email2"),
				request.getParameter("reyes1"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarReyes(Reyes);
		response.sendRedirect("listadoUsuario.jsp");
		
		/** 3- Mostrar resultado por pantalla */
		
	}
	private static void altaLugar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/** 1- recogida de datos */
		Lugar Lugar = new Lugar(request.getParameter("pabellon"), request.getParameter("calle"));
		System.out.println( request.getParameter("calle"));

		/** 2- Insertar jugador en la base de datos */
		boolean bRes = Controller.insertarLugar(Lugar);
		response.sendRedirect("listadoLugar.jsp");
		
		/** 3- Mostrar resultado por pantalla */
		
	}
		private static void altaCaramelos(HttpServletRequest request, HttpServletResponse response) throws Exception {
			/** 1- recogida de datos */
			Caramelos Caramelos = new Caramelos(request.getParameter("pabellons"), request.getParameter("sandia"),
					request.getParameter("menta"), request.getParameter("fresa"));
			System.out.println( request.getParameter("pabellon"));

			/** 2- Insertar jugador en la base de datos */
			boolean bRes = Controller.insertarCaramelos(Caramelos);
			response.sendRedirect("listadoCaramelos.jsp");
			
			/** 3- Mostrar resultado por pantalla */
			
		
		}
		private static void  loginUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
			System.out.println("Inicio loginUsuario()");
			// Podemos guardar información en la sesión del usuario
			HttpSession sesionoscar = request.getSession();
			String sEmail = request.getParameter("email1");
			String sPwd = request.getParameter("pwd");
			Reyes reyes = Controller.getReyes1(sEmail);
			Usuario admin =Controller.getAdmin(sEmail);
			// **** deberíamos buscar el email en la base de datos, pero como es
			// un ejemplo lo escribimos en el mismo código
			if(sEmail!=null) {
				if (sEmail.equals(reyes.getEmail()) & sPwd.equals(reyes.getPwd())) {
					
					if (sEmail.equals("admin@gmail.com") & sPwd.equals("admin")) {
						// si coincide email y password y además no hay sesión iniciada
						sesionoscar.setAttribute("admin", admin);
						// redirijo a página con información de login exitoso
						response.sendRedirect("admin.jsp");
						
					}else  {
						// si coincide email y password y además no hay sesión iniciada
						sesionoscar.setAttribute("usuarionormal", reyes);
						// redirijo a página con información de login exitoso
						response.sendRedirect("inicio.jsp");
					}
					
			}
				else {
				System.out.println("Login incorrecto: " + sEmail);
				// lógica para login inválido
				MostrarError(response, "usuario " + sEmail + " no válido");
			}
			}
		}

		
		
		private static void cerrarsesion(HttpServletRequest request,HttpServletResponse response) throws Exception{
			/*Cerrar Sesion*/
			HttpSession sesion =request.getSession();
			sesion.invalidate();
			request.setAttribute("cerrado", "Sesion Finalizada");
			response.sendRedirect("inicio.jsp");
				
		}
	private static void MostrarError(HttpServletResponse response,String sMensaje) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML>\n" + "<HEAD><TITLE>Página de JAGD</TITLE>" + "<meta charset=\"utf-8\">\r\n"
		+ " <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\r\n"
		+ " <linkhref=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\"rel=\"stylesheet\">\r\n"
		+ " <scriptsrc=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
		+ "</HEAD>\n" + "<BODY>\n" + "<div class=\"containermt-3\">\n"
		+ "<h1 class=\"text-danger\">Error<h1>\n" + "<h2 class=\"text-danger\">" + sMensaje + "<h2>\n"
		+"<img src=\"img/error.png\" class=\"rounded\" alt=\"errorinterno\">"
		+ "</div></BODY></HTML>");
		out.close();
	}

}
