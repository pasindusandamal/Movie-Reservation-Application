

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


@WebServlet(urlPatterns = {"/Delete"})
public class Delete extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           try {
            String mov_id = request.getParameter("mov_id");
           

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("delete from movies where mov_id='"+mov_id+"'");
            ps.executeUpdate();

            RequestDispatcher rd = request.getRequestDispatcher("Delete.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }

   
}
