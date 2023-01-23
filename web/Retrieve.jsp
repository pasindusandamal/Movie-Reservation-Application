<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema Update/Delete Operation</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    </head>
    <body>

        <!--SQL Query-->
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/lginfo" user = "root"  password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">SELECT * from movies;</sql:query>
            <!--SQL Query-->


            <div class="container-fluid" >
                <br>
                <h2 style="text-align: center">Update/Delete Movie Informations</h2>
                  <a href="AdminDB.jsp"><img src="images/icons8-home-page-96.png" style=" height: 60px; width: 60px;"></a>
                <br>
                <hr>
                <br>
                <div class="col" >
                    <table  id="myTable" border = "0"  style=" border: solid 1px rgb(237, 237, 245);">
                        <tr>
                            <th>Move Id</th>
                            <th>Move Name</th>
                            <th>Move Location</th>
                            <th>Move Type</th>
                            <th>Ticket Price</th>
                            <th>Movie Time</th>
                        </tr>


                    <c:forEach var = "row" items = "${result.rows}">
                        <form action="Retrieve.jsp" method="post">
                            <tr>
                                <td><input   name="mov_id"   value = "${row.mov_id}"/></td>
                                <td><input  name="movname" type="text" value = "${row.movname}"/></td>
                                <td><input   name="movelocation" type="text" value = "${row.movelocation}"/></td>
                                <td><input   name="movetype" type="text" value = "${row.movetype}"/></td>
                                <td><input   name="tkprice" type="text" value = "${row.tkprice}"/></td>
                                <td><input   name="time1" type="text" value = "${row.time1}"/></td>
                                <td><button type="submit"  class="btn btn-success" name="update"><i class="fa-solid fa-pen-to-square"></i></button></td>
                                <td> <button type="submit" class="btn btn-success" name="delete"/><i class="fa-solid fa-trash"></i></button></td>
                            </tr>
                        </form>
                    </c:forEach>   
                </table>
            </div>
        </div>



        <!--SQL Query-->
        <%  String mov_id1 = request.getParameter("mov_id");
            String movname1 = request.getParameter("movname");
            String update = request.getParameter("update");
            String delete = request.getParameter("delete");

            if (update != null) {

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
                    PreparedStatement ps = (PreparedStatement) con.prepareStatement("update movies set movname='" + movname1 + "' where mov_id='" + mov_id1 + "'");
                    ps.executeUpdate();
                    RequestDispatcher rd = request.getRequestDispatcher("Retrieve.jsp");
                    rd.forward(request, response);

                } catch (Exception e) {
                }
            }

            if (delete != null) {

                String sql = "DELETE FROM movies WHERE mov_id='" + mov_id1 + "'";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lginfo", "root", "");
                    Statement st = conn.createStatement();
                    st.executeUpdate(sql);
                    conn.close();
                    RequestDispatcher rd = request.getRequestDispatcher("Retrieve.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        %>
        <!--SQL Query-->

    </body>
</html>
