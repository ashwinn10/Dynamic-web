
import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		try {
			// Class.forName("com.mysql.jdbc.Driver");
			Connection connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employee",
					"root", "KL7bg3342$");

			PreparedStatement st = (PreparedStatement) connection
					.prepareStatement("Select username,password from empdetails where username=? and password=?");

			st.setString(1, uname);
			st.setString(2, password);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				// response.sendRedirect("Member.jsp");
				String user=uname;
	            HttpSession session = request.getSession();
	            session.setAttribute("LOGIN_USER", user);

			} else {
				response.sendRedirect("Error.jsp");
			}
			st = (PreparedStatement) connection.prepareStatement(
					"Select first_name,last_name,address,contact from empdetails where username=? and password=?");
			st.setString(1, uname);
			st.setString(2, password);
			rs = st.executeQuery();
			String fn, ln, ad, cont;
			String destination = "Member.jsp";
			RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);
			while (rs.next()) {
				fn = rs.getString(1);
				request.setAttribute("fn", fn);
				ln = rs.getString(2);
				request.setAttribute("ln", ln);
				ad = rs.getString(3);
				request.setAttribute("ad", ad);
				cont = rs.getString(4);
				request.setAttribute("cont", cont);

			}
			requestDispatcher.forward(request, response);

		}

		catch (Exception sqlException) {
			sqlException.printStackTrace();
		}

	}
	}
