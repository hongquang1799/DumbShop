package account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register.html")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Register() {
        //super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String passwordcf = request.getParameter("password_cf");
			
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(passwordcf);
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String passwordcf = request.getParameter("password_cf");
			
		System.out.println(name);
		System.out.println(email);
		System.out.println(password);
		System.out.println(passwordcf);
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
