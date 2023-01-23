
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

@WebServlet(urlPatterns = {"/reserve"})
public class reserve extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ResultSet rs = null;

        String fname1 = request.getParameter("fname");
        String mobile = request.getParameter("mobile");
        String emai1 = request.getParameter("email");
        String mvname = request.getParameter("mname");
        String date1 = request.getParameter("date");
        String time = request.getParameter("time");

        int tcount1 = Integer.parseInt(request.getParameter("tcount"));
        request.setAttribute("fname1", fname1);
        request.setAttribute("date", date1);
        request.setAttribute("tcount", tcount1);
        request.setAttribute("mvname", mvname);

        PrintWriter out = response.getWriter();

        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into reservation values(0,?,?,?,?,?,?,?,?,?) ");
            String fname = request.getParameter("fname");
            String email = request.getParameter("email");
            String idno = request.getParameter("idno");
            String phone = request.getParameter("phone");
            String mname = request.getParameter("mname");
            String date = request.getParameter("date");
            String time1 = request.getParameter("time");
            String tcount = request.getParameter("tcount");
            String price = request.getParameter("price");

            ps.setString(1, fname);
            ps.setString(2, email);
            ps.setString(3, idno);
            ps.setString(4, phone);
            ps.setString(5, mname);
            ps.setString(6, date);
            ps.setString(7, time1);
            ps.setString(8, tcount);
            ps.setString(9, price);

            ps.executeUpdate();
            RequestDispatcher rd = request.getRequestDispatcher("send_email.jsp");
            rd.forward(request, response);

        } catch (Exception e) {

            out.println("Successful");
        }

    }

}
