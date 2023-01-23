
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

@WebServlet(urlPatterns = {"/Feedback"})
public class Feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String rating = request.getParameter("rating");
            String name = request.getParameter("name");
            String feedback = request.getParameter("feedback");
            
            //PrintWriter out = response.getWriter();
               // out.println(rating);

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into customerfb(rating,name,feedback)values('"+rating+"','" + name + "','" + feedback + "')");
            ps.executeUpdate();

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.print(e);
            e.printStackTrace();
        }
    }

}
