
import java.io.IOException;
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

@WebServlet(urlPatterns = {"/UpdateInfo"})
public class UpdateInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ResultSet rs = null;

        try {
            String Id = request.getParameter("mov_id");
            String movname = request.getParameter("movname");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("update movies set movname='" + movname + "' where mov_id='" + Id + "'");
            ps.executeUpdate();
            RequestDispatcher rd = request.getRequestDispatcher("Retrieve.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
        }

    }

}
