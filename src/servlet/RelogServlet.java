package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RelogServlet
 */
@WebServlet("/relog")
public class RelogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RelogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookies = request.getCookies();
		String username = null;
		
		if(cookies!=null){
			for(int i = 0; i < cookies.length; i++){
				Cookie currentCookie = cookies[i];
				if(currentCookie.getName().equals("username")){
					username = currentCookie.getValue();
					currentCookie.setMaxAge(60*60*24*365*2);
					currentCookie.setHttpOnly(true);
					response.addCookie(currentCookie);
				}
			}
		}
		
		if(username!=null){
			request.getSession().setAttribute("uname", username);
			request.getRequestDispatcher("HomeLogin.jsp").forward(request, response);
		} else {
			response.sendRedirect("Home.html");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
