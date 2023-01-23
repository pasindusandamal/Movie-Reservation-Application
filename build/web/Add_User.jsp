
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Add User</title>
        
        <!--Bootstrap CDN Link-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        
        
        <!--Font Awesome CDN Links-->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    </head>
    <body>
        <div class="container"  style=" margin-left: 100px;">
            <br>
            <a href="AdminDB.jsp"><img src="images/icons8-home-page-96.png" style=" height: 60px; width: 60px;"></a>
            <h2 style=' text-align: center;'>Add User</h2>
            <br>
            <hr>
            <br>

            <form action="Add_User" method="post">
                <table   border = "0"  style=" border: solid 1px rgb(237, 237, 245);">
                    <tr>
                        <th>User Name</th>
                        <th>User Email</th>
                        <th>Password</th>
                        <th>User Mobile</th>
                        <th>User Type</th>
                    </tr>

                    <tr>
                    <form action="Add_User" method="post">
                        <td><input  name="uname" type="text" /></td>
                        <td><input   name="uemail" type="text" /></td>
                        <td><input   name="pwd" type="text" /></td>
                        <td><input   name="umobile" type="text" /></td>
                        <td><input   name="usertype" type="text" /></td>
                        <td>&nbsp <button type="submit"  class="btn btn-success" name="add"><i class="fa-solid fa-plus"></i></button>&nbsp </td>
                    </form>
                    </tr>

                </table>
            </form>
        </div>
    </body>
</html>
