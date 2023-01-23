<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema-Insert Movie Information</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">  
    </head>
    <body>
        <div class="container"  style=" margin-left: 100px;">
            <br>
            <a href="AdminDB.jsp"><img src="images/icons8-home-page-96.png" style=" height: 60px; width: 60px;"></a>
            <h2 style=' text-align: center;'>Insert Movies Information</h2>
            <br>
            <hr>
            <br>


            <table   border = "0"  style=" border: solid 1px rgb(237, 237, 245);">
                <tr>
                    <th>Move Name</th>
                    <th>Move Location</th>
                    <th>Move Type</th>
                    <th>Ticket Price</th>
                    <th>Movie Time</th>
                </tr>

                <tr>
                <form action="Insert" method="post">
                    <td><input  name="movname" type="text" /></td>
                    <td><input   name="movelocation" type="text" /></td>
                    <td><input   name="movetype" type="text" /></td>
                    <td><input   name="tkprice" type="text" /></td>
                    <td><input   name="time1" type="text" /></td>
                    <td>&nbsp <button type="submit"  class="btn btn-success" name="update"><i class="fa-solid fa-plus"></i></button>&nbsp </td>
                </form>
                </tr>

            </table>

        </div>
    </body>

</html>
