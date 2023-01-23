
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Dashboard</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />



        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


        <!--External CSS Links-->
        <link rel="stylesheet" href="css/style.css">


        <link rel="stylesheet" href="css/footer.css">

        <link rel="stylesheet" href="css/preloader.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Comfortaa&family=Inter:wght@500&family=Sono:wght@600&display=swap');


            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }

            .animated-button {
                background-color: #4CAF50;
                color: white;
                font-size: 16px;
                padding: 12px 24px;
                border: none;
                cursor: pointer;
                border-radius: 5px;
                position: relative;
                box-shadow: 0 3px #999;
                transition: 0.5s;
                width: 536px;
                height: 150px;
            }

            .animated-button:hover {
                background-color: #2ecc71;
                box-shadow: 0 5px #666;
                transform: translateY(-3px);
            }

            .animated-button:active {
                background-color: #2ecc71;
                box-shadow: 0 2px #666;
                transform: translateY(2px);
            }

        </style>
    </head>

    <body>

        <!--SQL QUery-->
        <%String jdbcUrl = "jdbc:mysql://localhost:3306/lginfo";
            String username = "root";
            String password = "";
            Connection connection = DriverManager.getConnection(jdbcUrl, username, password);%>

        <%String query = "SELECT COUNT(*) FROM reserve";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);%>

        <%
            int count = 0;
            if (rs.next()) {
                count = rs.getInt(1);
            }
        %>
        <!--SQL QUery-->



        <div class="container-fluid">
            <div class="row" >
                <div class="col-md-2" style=" background-color: buttonface;height: 652px;">
                    <div style=" margin-top: 40px; ">
                        <hr>

                        <p><img src="images/user(2).png">&nbsp&nbsp&nbsp <%=request.getAttribute("myname")%></p>
                        <hr>

                        <br>
                        <hr>

                        <p><i class="fa-sharp fa-solid fa-ticket-simple"></i>&nbsp&nbsp&nbsp <a  data-bs-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample" style='text-decoration: none;'>
                                Account
                            </a>
                        </p>
                        <hr>
                        <div class="collapse" id="collapseExample1">
                            <div>
                                <p><i class="fa-solid fa-plus"></i>&nbsp&nbsp&nbsp<a href="Add_User.jsp" style='text-decoration: none;'> Insert User</a></p>
                            </div>

                            <div>
                                <p><i class="fa-solid fa-eye"></i>&nbsp&nbsp&nbsp<a href="Add_Delete_User.jsp" style='text-decoration: none;'>Update/Delete/Users  </a></p>
                            </div>

                        </div>
                        <hr>

                        <p><i class="fa-sharp fa-solid fa-ticket-simple"></i>&nbsp&nbsp&nbsp <a  data-bs-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false" aria-controls="collapseExample" style='text-decoration: none;'>
                                Movie Info
                            </a>
                        </p>
                        <hr>
                        <div class="collapse" id="collapseExample2">
                            <div>
                                <p><i class="fa-solid fa-plus"></i>&nbsp&nbsp&nbsp<a href="Insert.jsp" style='text-decoration: none;'> Insert Movie</a></p>
                            </div>

                            <div>
                                <p><i class="fa-solid fa-eye"></i>&nbsp&nbsp&nbsp<a href="Retrieve.jsp" style='text-decoration: none;'>Update/Delete/Retrieve  </a></p>
                            </div>

                        </div>
                        <hr>

                        <p><i class="fa-sharp fa-solid fa-ticket-simple"></i>&nbsp&nbsp&nbsp <a  data-bs-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false" aria-controls="collapseExample" style='text-decoration: none;'>
                                Booking Info
                            </a>
                        </p>
                        <div class="collapse" id="collapseExample3">
                            <div>
                                <p><i class="fa-solid fa-trash"></i>&nbsp&nbsp&nbsp<a href="CReservation.jsp" style='text-decoration: none;'> Cancel Reservation</a></p>
                            </div>
                            <div>
                                <p><i class="fa-solid fa-pen-to-square"></i></i>&nbsp&nbsp&nbsp<a href="UpdateR.jsp" style='text-decoration: none;'>Update Reservation</a></p>
                            </div>

                        </div>
                        <hr>

                        <hr>
                        <p><i class="fa-solid fa-right-from-bracket"></i>&nbsp&nbsp&nbsp<a href="index.jsp" style='text-decoration: none;'> Logout</a></p>
                        <hr>
                    </div>
                </div>
                <div class="col-md-10" style=" background-image: url(images/index.jpeg); background-size: cover;">

                </div>
            </div>
        </div>



    </body>

    <script>
        function generatePromoCode() {
            const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            let promoCode = '';
            for (let i = 0; i < 8; i++) {
                promoCode += characters.charAt(Math.floor(Math.random() * characters.length));
            }
            document.getElementById('promo').value = promoCode;
        }
    </script>


    <script>
        const cursor = document.querySelector('.bg__gradient');

        let mouseX = 0;
        let mouseY = 0;

        let cursorX = 0;
        let cursorY = 0;

        let speed = 0.01;

        function animate() {
            let distX = mouseX - cursorX;
            let distY = mouseY - cursorY;

            cursorX = cursorX + (distX * speed);
            cursorY = cursorY + (distY * speed);

            cursor.style.left = cursorX + 'px';
            cursor.style.top = cursorY + 'px';

            requestAnimationFrame(animate);
        }
        animate();

        document.addEventListener('mousemove', (event) => {
            mouseX = event.pageX;
            mouseY = event.pageY;
        })



                (function ($) {

                    "use strict";

                    $(".card").tilt({
                        maxTilt: 15,
                        perspective: 1500,
                        easing: "cubic-bezier(.03,.98,.52,.99)",
                        speed: 500,
                        glare: false,
                        maxGlare: 0.2,
                        scale: 1.01
                    });

                }(jQuery));
    </script>

    <!--JS CDN Links-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://unpkg.com/tilt.js@1.1.19/dest/tilt.jquery.jsv"></script>
    <!--JS CDN Links-->

</body>
</html>
