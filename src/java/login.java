
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        ResultSet rs = null;
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String type = request.getParameter("type");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from users where uname=? and pwd=? ");
            ps.setString(1, uname);
            ps.setString(2, pwd);
            rs = ps.executeQuery();

            if (rs.next()) {
                request.setAttribute("myname", uname);
                RequestDispatcher rd = request.getRequestDispatcher("AdminDB.jsp");
                rd.forward(request, response);
                //PrintWriter out=response.getWriter();
                //out.println("Successful");

            } else {
                PrintWriter out = response.getWriter();
                out.println("Error");
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
        }
    }


}
