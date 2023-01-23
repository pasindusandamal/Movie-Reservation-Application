
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/seat"})
public class seat extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String movname = request.getParameter("movname");
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String idno = request.getParameter("idno");
        String count = request.getParameter("count");
        String tkprice = request.getParameter("tkprice");
        String food = request.getParameter("food");
        String totalam = request.getParameter("total");
        String time = request.getParameter("time1");
        String date = request.getParameter("date");
      
        request.setAttribute("sub", totalam);
        request.setAttribute("count", count);
        request.setAttribute("movname", movname);
        request.setAttribute("name", name);
        request.setAttribute("mobile", mobile);
        request.setAttribute("email", email);
        request.setAttribute("idno", idno);
        request.setAttribute("food", food);
        request.setAttribute("tkprices", tkprice);
        request.setAttribute("time1", time);
        request.setAttribute("date", date);
        String choosesports = "";
        String sports[] = request.getParameterValues("node_types[forum]");
        for (int i = 0; i < sports.length; i++) {
            choosesports += sports[i] + ",";
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into seat(choosesports) values('" + choosesports + "')");

        } catch (Exception e) {
            System.out.println(e);
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            // Connect to the database 
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");

// Create and execute a query 
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM seat");

// Iterate over the result set 
            StringBuilder sb = new StringBuilder();
            while (rs.next()) {
                sb.append(rs.getString("choosesports"));
                sb.append(",");
            }

// Close the connection 
            con.close();

// Get the concatenated string 
            String concatenatedString = sb.toString();
            request.setAttribute("concatenatedString", concatenatedString);
            RequestDispatcher rd = request.getRequestDispatcher("paypal.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
        }

    }

}
