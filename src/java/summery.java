
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

@WebServlet(urlPatterns = {"/summery"})
public class summery extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String movname = request.getParameter("mname");
        String name = request.getParameter("fname");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String count = request.getParameter("tcount");
        String tkprice = request.getParameter("price");
        String idno = request.getParameter("idno");
        
        String subj = "Seat Reservation";
        String msg = "Thank You for reserving ticket via our online platform"
                + "Your Order Id is " + date;
        
        request.setAttribute("date", date);
        request.setAttribute("time1", time);
        request.setAttribute("count", count);
        request.setAttribute("movname", movname);
        request.setAttribute("name", name);
        request.setAttribute("mobile", mobile);
        request.setAttribute("email", email);
        request.setAttribute("subject", subj);
        request.setAttribute("message", msg);

        try {
           
            String movelocation = request.getParameter("movelocation");
            String movetype = request.getParameter("movetype");
            String time1 = request.getParameter("time1");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
            PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into reserve(fname,email,idno,mobile,movname,date1,time1,tkcount,tamount) values('" + name + "','" + email + "','" + idno + "','"+mobile+"','"+movname+"','"+date+"','"+time+"','"+count+"','"+tkprice+"')");
            //PreparedStatement ps = (PreparedStatement) con.prepareStatement("insert into reservation(fname,email,mobile) values('" + name + "','" + email + "','"+mobile+"')");
            ps.executeUpdate();
            RequestDispatcher rd = request.getRequestDispatcher("send_email.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.println("Error encountered: " + e.getMessage());
        }

    }

}
