<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Choose Your Seat</title>

        <!-- External CSS Links -->
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/preloader.css">

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


        <!-- Bootsrap CDN Link -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


        <!-- MDB -->
        <script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

        <style>
            #ex1{
                color:black;
            }
            /* Text place on image*/ 
            .text-block {

                position: absolute;
                font-size: 8px;
                color: black;
                margin-left: 15px;
                /* Text place on image*/ 
            }
        </style>


    </head>
    <body onload="checkCheckbox(), startTimer();">

        <!--Data fetch using Database-->
        <%
            String url = "jdbc:mysql://localhost:3306/lginfo";
            String username = "root";
            String password = "";
            String query = "SELECT * FROM seat";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, username, password);
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);

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
                rs.close();
                st.close();
                con.close();
            } catch (Exception e) {
            }
        %>
        <!--Data fetch using Database-->


        <!--Navigation Bar Info-->
        <nav class="navbar   navbar-expand-sm navbar-light bg-dark fixed-top">

            <a class="navbar-brand" href="index.jsp">
                <img src="images/abccinema.png" style=" height: 50px; width: 40px;" class="d-inline-block align-text-top">   
            </a>

            <button class="navbar-toggler" type="button"  data-bs-toggle="collapse" data-bs-target="#navbarToggler9"
                    aria-controls="navbarToggler9" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarToggler9">
                <ul class="navbar-nav " style=" margin-left: 335px;">

                    <li class="nav-item ">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="News.jsp">News</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="About.jsp">About</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Contac.jsp">Contact</a>
                    </li>
                </ul>

            </div>
        </nav>
        <!--Navigation Bar Info-->


        <br><br>

        <div style=" margin-left: 1150px; margin-top: 20px;">
            <button class="btn btn-danger"><span id="timeLeft"></span></button>
        </div>
        <!--Seat Arrangement  Info-->
        <div class="container">
            <div class="row">
                <div class="col" style=" margin-top: 10px;">
                    <h2  name="movname">Choose Your Seat for <%=request.getAttribute("movname")%></h2>

                    <div class="content" style=" margin-top: 20px; margin-left: 35px; ">

                        <form action="seat" method="post" id="devel-generate-content-form" accept-charset="UTF-8">


                            <!--Seat Row 1-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="item" name="node_types[forum]" value="A1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="item" name="node_types[forum]" value="A2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="A8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>A8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>

                            <!--Seat Row 2-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="B8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>B8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>

                            <!--Seat Row 3-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="C8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>C8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>

                            <!--Seat Row 4-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="D8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>D8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>

                            <!--Seat Row 5-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="E8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>E8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>

                            <!--Seat Row 6-->
                            <table class="sticky-enabled">
                                <tr>
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F1" class="form-checkbox"   />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F1 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F2" class="form-checkbox"  style=" margin-right: 20px;"/>
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F2 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F3" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F3 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F4" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F4 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F5" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F5 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F6" class="form-checkbox"style=" margin-right: 20px;" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F6 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F7" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F7 </p>     
                                        </div>
                                    </td> 
                                    <td>
                                        <input type="checkbox" id="edit-node-types-forum" name="node_types[forum]" value="F8" class="form-checkbox" />
                                        <div class="text-block" style=' margin-bottom: 550px; margin-left:1px; margin-top: -20px;'>
                                            <p>F8 </p>     
                                        </div>
                                    </td> 
                                </tr>
                            </table>


                            <!--
                            <div class="count-checkboxes-wrapper">
                                <span id="count-checked-checkboxes">0</span> checked
                            </div>-->




                            <div class="form-item form-type-textfield form-item-count-checked-checkboxes">

                                <label for="disabledTextInput" class="form-label">Ticket Price</label><br>
                                <input type="text" id="tprice" name="tkprice" value="<%=request.getAttribute("tkprice")%>"><br> 

                                <label for="edit-count-checked-checkboxes">count-checked-checkboxes</label><br> 
                                <span class="form-required" title="Szükséges mező."></span></label>
                                <input type="text" id="edit-count-checked-checkboxes" name="count" value="0" size="60" maxlength="50" class="form-text required" style=" width: 100px;" /><br>

                                <label for="disabledTextInput" class="form-label">Full Name</label>
                                <input type="text" id="disabledTextInput" name="name" class="form-control " placeholder="">

                                <label for="disabledTextInput" class="form-label">Mobile Number</label>
                                <input type="text" id="disabledTextInput" name="mobile" class="form-control " placeholder="">

                                <label for="disabledTextInput" class="form-label">Email Address</label>
                                <input type="email" id="disabledTextInput" name="email" class="form-control " placeholder="">

                                <label for="disabledTextInput" class="form-label">ID Number</label>
                                <input type="text" id="disabledTextInput" name="idno" class="form-control " placeholder="">

                                <label for="disabledTextInput" class="form-label">Date</label>
                                <input type="text" id="disabledTextInput" name="date" class="form-control " value="<%=request.getAttribute("date")%>"    placeholder="">

                                <label for="disabledTextInput" class="form-label">Time</label>
                                <input type="text" id="disabledTextInput" name="time1" class="form-control "  value="<%=request.getAttribute("time1")%>"   placeholder="">
                            </div> 
                    </div>
                </div>


                <div class="col" style=" margin-top: 70px; color:black;">
                    <!-- Tabs navs -->
                    <ul class="nav nav-tabs nav-justified mb-3" id="ex1" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link active"
                                id="ex3-tab-1"
                                data-mdb-toggle="tab"
                                href="#ex3-tabs-1"
                                role="tab"
                                aria-controls="ex3-tabs-1"
                                aria-selected="true" 
                                ><div style=" color: black;">Beverage</div></a>

                        </li>
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link"
                                id="ex3-tab-2"
                                data-mdb-toggle="tab"
                                href="#ex3-tabs-2"
                                role="tab"
                                aria-controls="ex3-tabs-2"
                                aria-selected="false"
                                ><div style=" color: black;">Snacks</div></a
                            >
                        </li>
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link"
                                id="ex3-tab-3"
                                data-mdb-toggle="tab"
                                href="#ex3-tabs-3"
                                role="tab"
                                aria-controls="ex3-tabs-3"
                                aria-selected="false"
                                ><div style=" color: black;">Popcorn</div></a
                            >
                        </li>
                        <li class="nav-item" role="presentation">
                            <a
                                class="nav-link"
                                id="ex4-tab-4"
                                data-mdb-toggle="tab"
                                href="#ex4-tabs-4"
                                role="tab"
                                aria-controls="ex4-tabs-4"
                                aria-selected="false"
                                ><div style=" color: black;">Juice</div></a
                            >
                        </li>
                    </ul>
                    <!-- Tabs navs -->

                    <!-- Tabs content -->
                    <div class="tab-content" id="ex2-content">
                        <div
                            class="tab-pane fade show active"
                            id="ex3-tabs-1"
                            role="tabpanel"
                            aria-labelledby="ex3-tab-1"
                            >
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/Water-Bottle-Flask-PNG-Transparent-Image.png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id='ab1' name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="120">Water Bottle 1L</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id='ab2' name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;"onclick="multiply1()">Add</button>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/pngwing.com(1).png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab3" name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="600">Fanta Can 250ml</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab4" name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply2()">Add</button>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/coca-cola-png-41655.png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab5"  name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="590">Coca Cola Can 250ml</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab6" name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply3()">Add</button>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/580b57fcd9996e24bc43c1e9.png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab7"  name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="750">Red Bull 250ml</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab8"  name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply4()">Add</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="ex3-tabs-2"
                            role="tabpanel"
                            aria-labelledby="ex3-tab-2"
                            >
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/pngwing.com(6).png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab9" name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="265">Doritos Tortilla Chips</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab10"  name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply5()">Add</button>
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/pngwing.com(5).png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab11"  name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="265">Doritos Masala Mayhem</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab12"  name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply6()">Add</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="ex3-tabs-3"
                            role="tabpanel"
                            aria-labelledby="ex3-tab-3"
                            >
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/Popcorn-Transparent-File.png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab13"  name="abc" style=" width: 150px; margin-left: -20px;">
                                            <option value="250">Popcorn</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab14"  name="abc" style=" width: 40px; margin-left: 5px;">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary"    style=" width: 70px;  margin-top: 15px;" onclick="multiply7()">Add</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="ex4-tabs-4"
                            role="tabpanel"
                            aria-labelledby="ex4-tab-4"
                            >
                            <div class="container">
                                <div class="row">
                                    <div class="col">
                                        <img src="images/pngwing.com(9).png" style=" height: 60px;width: 70px; ">
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow"  id="ab15" name="abc" style=" width: 200px; margin-left: -20px;">
                                            <option value="800">Strawberry Juice</option>
                                        </select> 
                                    </div>
                                    <div class="col" style=" margin-top: 15px;">
                                        <select class="selectpicker form-control rounded shadow" id="ab16"  name="abc" style=" width: 40px; margin-left: 5px;" >
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select> 
                                    </div>
                                    <div class="col">
                                        <button type="button" class="btn btn-primary" style=" width: 70px;  margin-top: 15px;" onclick="multiply8()">Add</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tabs content -->

                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="row" style=" margin-left: 20px; margin-top: 20px;">
                                    <div class="col">
                                        <input type="text" id="txt3" name="food" class="form-control " placeholder="Food & Beverage Charges" style=" width: 270px; margin-left: 54px;">
                                    </div>
                                    <div class="col">
                                        <input type="button" value="Check" onclick="sum();" style=" width: 70px; height: 37px; margin-left: 36px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" id="total" name="total" id="total" value="" />

                </div>
            </div>
            <input type="hidden"  name="movname" value="<%=request.getAttribute("movname")%>"> 
            <button type="submit" class="btn btn-secondary" onclick="acc();" style=" margin-left: 990px;">Continue</button>
        </form>
    </div>

    <input type="hidden" id="ab" value="<%=request.getAttribute("concatenatedString")%>">

    <script>
        function acc() {
// Get the values from the HTML elements
            let num1 = document.getElementById('tprice').value;
            let num2 = document.getElementById('edit-count-checked-checkboxes').value;
            let num3 = document.getElementById('txt3').value;
            if (!num3) {
                num3 = 0;
            }
// Add the values
            let total = (((parseInt(num1) * parseInt(num2)) + parseInt(num3)) / 368);
// Set the total value to the total field
            let intValue = Math.floor(total); // 123
            document.getElementById('total').value = intValue;
        }
    </script>





    <script type="text/javascript">
        function checkCheckbox()

        {
            var txt = document.getElementById("ab").value;
            var array = txt.split(",");
            //var array = ["Item1", "Item2", "Item3"]
            var checkboxes = document.getElementsByName('node_types[forum]');
            for (var i = 0; i < checkboxes.length; i++)
            {
                if (array.indexOf(checkboxes[i].value) > -1)
                {
                    //checkboxes[i].checked = true;
                    checkboxes[i].disabled = true;
                }
            }
            document.getElementsByName("node_types[forum]").disabled = true;
        }
    </script>



    <script>
        function cal() {
            var f1 = parseInt(document.getElementById('#ab1').value);
            var f2 = parseInt(document.getElementById('#ab2').value);
            document.getElementById("#ab3").value = f1 * f2;
        }
    </script>



    <script>

        $(document).ready(function () {
            var $checkboxes = $('#devel-generate-content-form td input[type="checkbox"]');
            $checkboxes.change(function () {
                var countCheckedCheckboxes = $checkboxes.filter(':checked').length;
                $('#count-checked-checkboxes').text(countCheckedCheckboxes);
                $('#edit-count-checked-checkboxes').val(countCheckedCheckboxes);
            });
        });
    </script>


    <script>
        function multiply1() {
            var num1 = document.getElementById("ab1").value;
            var num2 = document.getElementById("ab2").value;
            var result = num1 * num2;
            document.getElementById("result1").value = result;
        }
    </script>

    <input type="hidden" id="result1" placeholder="1">

    <script>
        function multiply2() {
            var num1 = document.getElementById("ab3").value;
            var num2 = document.getElementById("ab4").value;
            var result = num1 * num2;
            document.getElementById("result2").value = result;
        }
    </script>

    <input type="hidden" id="result2" placeholder="2">


    <script>
        function multiply3() {
            var num1 = document.getElementById("ab5").value;
            var num2 = document.getElementById("ab6").value;
            var result = num1 * num2;
            document.getElementById("result3").value = result;
        }
    </script>

    <input type="hidden" id="result3" placeholder="3">


    <script>
        function multiply4() {
            var num1 = document.getElementById("ab7").value;
            var num2 = document.getElementById("ab8").value;
            var result = num1 * num2;
            document.getElementById("result4").value = result;
        }
    </script>

    <input type="hidden" id="result4" placeholder="4">


    <script>
        function multiply5() {
            var num1 = document.getElementById("ab9").value;
            var num2 = document.getElementById("ab10").value;
            var result = num1 * num2;
            document.getElementById("result5").value = result;
        }
    </script>

    <input type="hidden" id="result5" placeholder="5">


    <script>
        function multiply6() {
            var num1 = document.getElementById("ab11").value;
            var num2 = document.getElementById("ab12").value;
            var result = num1 * num2;
            document.getElementById("result6").value = result;
        }
    </script>

    <input type="hidden" id="result6" placeholder="6">


    <script>
        function multiply7() {
            var num1 = document.getElementById("ab13").value;
            var num2 = document.getElementById("ab14").value;
            var result = num1 * num2;
            document.getElementById("result7").value = result;
        }
    </script>

    <input type="hidden" id="result7" placeholder="7">



    <script>
        function multiply8() {
            var num1 = document.getElementById("ab15").value;
            var num2 = document.getElementById("ab16").value;
            var result = num1 * num2;
            document.getElementById("result8").value = result;
        }
    </script>

    <input type="hidden" id="result8" placeholder="8">


    <script>
        function sum() {

            var txtFirstNumberValue = document.getElementById('result1').value;
            var txtSecondNumberValue = document.getElementById('result2').value;

            var txtThirdNumberValue = document.getElementById('result3').value;
            var txtFourthNumberValue = document.getElementById('result4').value;

            var txtFifthNumberValue = document.getElementById('result5').value;
            var txtSixthNumberValue = document.getElementById('result6').value;

            var txtSeventhNumberValue = document.getElementById('result7').value;
            var txtEightNumberValue = document.getElementById('result8').value;


            if (!txtFirstNumberValue) {
                txtFirstNumberValue = 0;
            }
            if (!txtSecondNumberValue) {
                txtSecondNumberValue = 0;
            }
            if (!txtThirdNumberValue) {
                txtThirdNumberValue = 0;
            }
            if (!txtFourthNumberValue) {
                txtFourthNumberValue = 0;
            }
            if (!txtFifthNumberValue) {
                txtFifthNumberValue = 0;
            }
            if (!txtSixthNumberValue) {
                txtSixthNumberValue = 0;
            }
            if (!txtSeventhNumberValue) {
                txtSeventhNumberValue = 0;
            }
            if (!txtEightNumberValue) {
                txtEightNumberValue = 0;
            }
            var result = ((parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue) + parseInt(txtThirdNumberValue) + parseInt(txtFourthNumberValue) + parseInt(txtFifthNumberValue) + parseInt(txtSixthNumberValue) + parseInt(txtSeventhNumberValue) + (txtEightNumberValue)) / 370);
            document.getElementById('txt3').value = result;

            if (!result) {
                result = 0;
            }

        }
    </script>


    <script>
        // Set the time period to 5 minutes
        var timePeriod = 5 * 60 * 1000;

        // Set the time count to 0 
        var timeCount = 0;

        // Create a timer to count down
        function startTimer() {
            setInterval(function () {
                timeCount++;
            }, 1000);
        }

        // When the page is loaded, start the timer 


        // Set a timeout to switch to the next page after 5 minutes
        setTimeout(function () {
            window.location.href = "index.jsp";
        }, timePeriod);
    </script>



    <script>
        // Calculate the remaining time 
        function calculateTimeLeft() {
            var timeLeft = timePeriod - timeCount * 1000;
            if (timeLeft <= 0) {
                timeLeft = 0;
            }
            // Calculate the minutes and seconds left
            var minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);
            // Display minutes and seconds in the page
            document.getElementById("timeLeft").innerHTML = minutes + "m " + seconds + "s ";
        }
        // Update the time left every second 
        setInterval(calculateTimeLeft, 1000);
    </script>


    <!--Footer-->
    <div class="container-fluid" style=" background-image:url(images/footer1.jpg); margin-top: 30px;height: 300px;" id="footer-font">
        <div class="row">
            <div class="col">
                <img src="images/abccinema.png" style=" height: 100px;width: 60px;">
                <p>ABC Cinema is the one of leading company in film industry.</p>


            </div>
            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px;">Useful Links</h2>

                <div class="ff-footer">
                    <p id="aa"  style=" font-size: 16px;"><a href="About.jsp" style="text-decoration: none; color: white;"> About ABC</a></p>
                    <p id="aa" style=" font-size: 16px;   "><a href="CRUser.jsp" style="text-decoration: none; color: white;"> Cancel Reservation</a></p>
                    <p id="aa" style=" font-size: 16px;   "><a href="Feedback.jsp" style="text-decoration: none; color: white;"> Feedback</a></p>
                </div>
            </div>

            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px;">Quick Links</h2>
                <div class="ff-footer" style=" font-size: 10px;">
                    <p id="aa" style=" font-size: 16px;"><a href="News.jsp" style="text-decoration: none; color: white;">News</a></p>
                    <p id="aa" style=" font-size: 16px;"><a href="terms and condition.jsp" style="text-decoration: none; color: white;">Terms and Condition</a></p>
                    <p id="aa" style=" font-size: 16px;"><a href="Rpolicies.jsp" style="text-decoration: none; color: white;">Refund Policy</a></p>
                </div>
            </div>

            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px;" >Contact</h2>
                <div class="ff-footer">
                    <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-phone"></i>&nbsp011-1111111</p>
                    <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-location-dot"></i>&nbsp Colombo-3</p>
                     <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-envelope"></i>&nbsp abccinema07@gmail.com</p>
                </div>
            </div>

            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px;" >Follow us</h2>
                <p> <i class="fa-brands fa-facebook"></i> &nbsp;&nbsp;
                    <i class="fa-brands fa-google-plus"></i> &nbsp;&nbsp;
                    <i class="fa-brands fa-twitter"></i> &nbsp;&nbsp;
                </p>
            </div>
        </div>
        <hr>
        <div style="text-align: center">©2023 ABC Cinema All Rights Reserved.</div>
    </div>
    <!--Footer-->



</body>
</html>
