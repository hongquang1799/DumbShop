package account;

import database.ConnectionManager;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login.html")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
		Connection con = ConnectionManager.getConnection();

		try
		{
			String sql = "Select USER_NAME, GENDER, PASSWORD from USER_ACCOUNT";                
			 
	        PreparedStatement pstm = con.prepareStatement(sql);
	        //pstm.setString(1, userName);
	        //pstm.setString(2, password);
	        ResultSet rs = pstm.executeQuery();
	 
	        while (rs.next()) {
	            String gender = rs.getString("GENDER");
	            String name = rs.getString("USER_NAME");
	            String pw = rs.getString("PASSWORD");
	            
	            
	            
	            System.out.println(gender + "-" + name + "-" + pw);
	        }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("DO POST");
	}

}
