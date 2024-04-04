import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        
        Cookie ck= new Cookie("UserName",username);
        response.addCookie(ck);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/mysql", "root", "");

            PreparedStatement ps = con.prepareStatement("INSERT INTO users (username, password, email, name) VALUES (?, ?, ?, ?)");
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, name);

            int result = ps.executeUpdate();

            if (result > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                
                Date lastLoginTime = (Date) session.getAttribute("lastLoginTime");
            if(lastLoginTime==null)
            {
                lastLoginTime = new Date();
            }
            session.setAttribute("lastLoginTime", new Date());
            
                response.sendRedirect("index.jsp");
            } else {
                out.println("Sign Up failed. Please try again.");
            }
        } catch (Exception e) {
            out.println(e);
        }
    }
}
