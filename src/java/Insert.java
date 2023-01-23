
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/Insert"})
public class Insert extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String movname = request.getParameter("movname");
            String movelocation = request.getParameter("movelocation");
            String movetype = request.getParameter("movetype");
            String tkprice = request.getParameter("tkprice");
            String time1 = request.getParameter("time1");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into movies(movname,movelocation,movetype,tkprice,time1)values('" + movname + "','" + movelocation + "','" + movetype + "','" + tkprice + "','" + time1 + "')");
            ps.executeUpdate();

            RequestDispatcher rd = request.getRequestDispatcher("Insert.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }

    }

}
