
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

@WebServlet(urlPatterns = {"/movies"})
public class movies extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into bookinginfo values(0,?,?,?,?,?,?) ");
            String movname = request.getParameter("movname");
            String movelocation = request.getParameter("movelocation");
            String movetype = request.getParameter("movetype");
            String time1 = request.getParameter("time1");
            String date = request.getParameter("date");
            String tkprice = request.getParameter("tkprice");
            request.setAttribute("movname", movname);
            request.setAttribute("tkprice", tkprice);

            ps.setString(1, movname);
            ps.setString(2, movelocation);
            ps.setString(3, movetype);
            ps.setString(4, tkprice);
            ps.setString(5, time1);
            ps.setString(6, date);
            
            request.setAttribute("time1", time1);
            request.setAttribute("date", date);

            RequestDispatcher rd = request.getRequestDispatcher("seat.jsp");
            rd.forward(request, response);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

}
