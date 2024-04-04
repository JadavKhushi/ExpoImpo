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
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Cookie ck= new Cookie("UserName",username);
        response.addCookie(ck);
             
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
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
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid login credentials. Please try again.');");
                out.println("location='login.jsp';");
                out.println("</script>");
                
            }
        } catch (Exception e) {
            out.println(e);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        HttpSession session = request.getSession();
        
        //retrive last login time from session
        Date lastLoginTime = (Date) session.getAttribute("lastLoginTime");
        
        if(lastLoginTime != null)
        {
            //format last login time as a string 
            SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String formattedLastLoginTime = sdf.format(lastLoginTime);
            
            //you can use the formatted llt as needed
            response.getWriter().println("Last Login time: " + formattedLastLoginTime);
        }
        else{
            //handle the case when last login time is not available
            response.getWriter().println("Last login time not available");
        }
    }
}
