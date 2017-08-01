package servlet;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = {"/servlet", "/login", "/register"})
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("uname");
		String password = request.getParameter("psw");
			
		// check if login or register
		String urlPattern = request.getServletPath();
		System.out.println(urlPattern);
		switch(urlPattern) {
		case "/login":
			if(username.equals("admin") && password.equals("1234")){
				//accept" 
				// forward to a success page
				request.setAttribute("un", username);
				
				HttpSession session = request.getSession();
				session.setAttribute("sessionun", username);
				
				Cookie usernameCookie = new Cookie("username", username);
				usernameCookie.setMaxAge(60*60*24*21); 
				response.addCookie(usernameCookie);
				
				RequestDispatcher rd = request.getRequestDispatcher("HomeLogin.jsp"); 
				rd.forward(request, response); 
			}else {
				//refuse: 
				// forward to the same page login 
				response.sendRedirect("Home.html");
			}
			break;
		case "/register":
			break; 
		
		}
	}
}

