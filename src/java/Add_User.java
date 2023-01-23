
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Add_User"})
public class Add_User extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String uname = request.getParameter("uname");
            String uemail = request.getParameter("uemail");
            String pwd = request.getParameter("pwd");
            String umobile = request.getParameter("umobile");
            String usertype = request.getParameter("usertype");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into users(uname,uemail,pwd,umobile,usertype)values('" + uname + "','" + uemail + "','" + pwd + "','" + umobile + "','" + usertype + "')");
            ps.executeUpdate();

            RequestDispatcher rd = request.getRequestDispatcher("Add_User.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

}
