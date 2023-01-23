
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/moveinfo"})
public class moveinfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ResultSet rs = null;
        String mname = request.getParameter("abc");
        String time = request.getParameter("time1");
        String date = request.getParameter("txtdate");
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("select *  from movies where movname='" + mname + "' ");
            rs = ps.executeQuery();

            if (rs.next()) {

                String Mname = rs.getString("movname");
                String Location = rs.getString("movelocation");
                String Category = rs.getString("movetype");
                String tkprice = rs.getString("tkprice");
                String Time = rs.getString("time1");
                PrintWriter out = response.getWriter();
                //out.println(mname);
              
                request.setAttribute("movname", Mname);
                request.setAttribute("movelocation", Location);
                request.setAttribute("movetype", Category);
                request.setAttribute("tkprice", tkprice);
                request.setAttribute("time1", Time);
                RequestDispatcher rd = request.getRequestDispatcher("Movies.jsp");
                rd.forward(request, response);
            } else {

                out.println("Error");
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
        }
        

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
            ResultSet rs1 = stmt.executeQuery("SELECT * FROM seat");
// Iterate over the result set 
            StringBuilder sb = new StringBuilder();
            while (rs.next()) {
                sb.append(rs1.getString("choosesports"));
                sb.append(",");
            }
// Close the connection 
            con.close();
// Get the concatenated string 
            String concatenatedString = sb.toString();
            request.setAttribute("concatenatedString", concatenatedString);

        } catch (Exception e) {
        }
    }

}
