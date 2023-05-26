
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Reg() {
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
		try {
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root",
					"KL7bg3342$");

			String id = request.getParameter("Id");
			String first_name = request.getParameter("firstName");
			String last_name = request.getParameter("lastName");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String address = request.getParameter("address");
			String contact = request.getParameter("contact");
			PreparedStatement ps = con.prepareStatement(
					"insert into empdetails(id,first_name, last_name, username, password, address, contact) values(?,?,?,?,?,?,?);");
			ps.setString(1, id);
			ps.setString(2, first_name);
			ps.setString(3, last_name);
			ps.setString(4, username);
			ps.setString(5, password);
			ps.setString(6, address);
			ps.setString(7, contact);
			int x = ps.executeUpdate();
			if (x > 0)
				response.sendRedirect("login.jsp");
			else
				response.sendRedirect("Error.jsp");
		} catch (Exception sqlException) {
			sqlException.printStackTrace();
		}

	}
}
