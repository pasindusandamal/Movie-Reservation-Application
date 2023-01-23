<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
    </head>
    <body>
        
        <div class="container" style=" margin-top: 30px;">
              <a href="AdminDB.jsp"><img src="images/icons8-home-page-96.png" style=" height: 60px; width: 60px;"></a>
               <h2 style="text-align: center">Update/Delete Movie Information</h2>
               <hr>
            <div class="row">

                <div class="col">

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Movie Id</label>
                            <input type="text" class="form-control" name="Id" id="exampleFormControlInput1" value="<%=request.getAttribute("Id")%>" placeholder="name@example.com" style="width: 50px;">
                        </div>
                    </div>

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Movie Name</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="movname" value="<%=request.getAttribute("movname")%>" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Movie Location</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="movlocation" value="<%=request.getAttribute("movlocation")%>" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Movie Type</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="movtype" value="<%=request.getAttribute("movtype")%>" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Ticket Price</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="tkprice" value="<%=request.getAttribute("tkprice")%>" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="col">
                        <div class="sm-3">
                            <label for="exampleFormControlInput1" class="form-label">Time</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" name="time1" value="<%=request.getAttribute("time1")%>" placeholder="name@example.com">
                        </div>
                    </div>

                    <div class="col" style=" margin-top: 30px;">
                        <div class="sm-3">
                            <form action="Admin" method="post">
                                <button type="submit" class="btn btn-success">Update</button>
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>


    </body>
</html>
