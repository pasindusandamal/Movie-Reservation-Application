<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Cancel Reservation</title>
        
        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    </head>
    <body>

        <div class="container">
            <br>
            <a href="AdminDB.jsp"><img src="images/icons8-home-page-96.png" style=" height: 60px; width: 60px;"></a>
            <h2 style=" text-align: center;"> Cancel Reservation</h2>
            <br>
            <hr>
            <div class="row">
                <div class="col">

                    <form action="CReservation.jsp" method="method">

                        <div class="mb-3">
                            <label>Reservation Number</label>
                            <input type="text" id="idno"  name="idno" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label>Email </label>
                            <input type="text" id="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Date </label>
                            <input type="text" id="date" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Refund Value </label>
                            <input type="text" class="form-control">
                        </div>
                        <button type="submit" id="delete" name="delete" class="btn btn-primary" onsubmit="callJqueryAjax()">Submit</button>
                    </form>
                </div>

            </div>
        </div>




        <!--SQL Query-->
        <%
            String idno = request.getParameter("idno");
            String delete = request.getParameter("delete");

            if (delete != null) {

                String sql = "DELETE FROM reserve WHERE idno='" + idno + "'";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
                    Statement st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    RequestDispatcher rd = request.getRequestDispatcher("CReservation.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        %>
        <!--SQL Query-->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
        <h4 id="result">
            <script>
                            function callJqueryAjax() {
                                var subject = "Reservation Cancellation";
                                subject = $('#subject').val();
                                var email = $('#email').val();
                                message = "We're sorry to hear that you have decided to cancel your reservation.Your reservation (#['" + idno + "'])<br>\n\
                    for ['" + date + "'] has been successfully cancelled.";
                                var message = $('#message').val();
                                $.ajax({
                                    url: 'EmailSendingServlet',
                                    method: 'POST',
                                    data: {subject: subject, email: email, message: message},
                                    //success: function (resultText) {
                                    //$('#result').html(resultText);
                                    // },
                                    // error: function (jqXHR, exception) {
                                    // console.log('Error occured!!');
                                    // }
                                });

                                //document.location.href = "index.jsp";
                            }
                            ;
            </script>


    </body>
</html>
