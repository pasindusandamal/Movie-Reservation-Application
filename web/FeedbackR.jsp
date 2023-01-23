<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Retrieve Customer Feedback</title>

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    </head>
    <body>

        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/lginfo"
                           user = "root"  password = ""/>


        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from customerfb;
        </sql:query>
        <br>
        <h2 style=' text-align: center;'>Movie Info</h2>
        <br>
        <hr>
        <br>

        <div class="container" style=" width: 900px;">
            <table border = "0" width = "900px;" style=" margin-left:-15px; border: solid 1px rgb(237, 237, 245);">
                <tr>
                    <th>Id</th>
                    <th>Rate</th>
                    <th>Message</th>
                </tr>
                <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                    <form action="UpdateInfo" method="post">
                        <td><input class="form-control" name="mov_id"   value = "${row.Id}"/></td>
                        <td><input class="form-control" name="movname" type="text" value = "${row.rate}"/></td>
                        <td><input  class="form-control" name="movelocation" type="text" value = "${row.message}"/></td>
                        <td><button type="submit"  class="btn btn-success" name="update"><i class="fa-solid fa-pen-to-square"></i></button></td>
                    </form>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
