<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Cancel User Form</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

         <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    </head>

    <body style=" background-color: rgb(6, 15, 25); color: white;">


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

                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item  ">
                        <a class="nav-link" href="Movies.jsp">Buy Ticket</a>
                    </li>

                    <div class="dropdown">

                        <li class="nav-item ">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>

                    </div>
                </ul>
            </div>
        </nav>
        <!--Navigation Bar Info-->
        <br> <br> <br>

        <h2 style=" text-align: center;">Cancel Reservation Form</h2>
        <br>
        <hr>
        <div class="container">
            <div class="row">

                <div class="col">

                    <form action="CRUser" method="post">
                        <div class="mb-3">
                            <label  class="form-label">Full Name</label>
                            <input type="text" name="flname" class="form-control">

                        </div>
                        <div class="mb-3">
                            <label  class="form-label">Reservation Id</label>
                            <input type="text"  name="rid" class="form-control" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email </label>
                            <input type="email"  name="email" class="form-control" >
                        </div>

                        <div class="mb-3">
                            <label  class="form-label">Date </label>
                            <input type="date" name="date" class="form-control" >
                        </div>

                        <div class="mb-3">
                            <label  class="form-label">Reason</label>
                            <select class="form-select" aria-label="Default select example" name="reason">
                                <option selected>Select Reason</option>
                                <option value="a change in travel plans">a change in travel plans</option>
                                <option value="conflict with another event">conflict with another event</option>
                                <option value="unavailability of desired accommodations">unavailability of desired accommodations</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div class="col" style="font-size: 15px;">
                    <h2 style="font-size: 25px;">Movie Ticket Refund Policy</h2>
                    <p>This policy outlines rules for cancelling reservations of movie tickets.</p>

                    <h2 style="font-size: 25px;">Cancellation of Tickets</h2>
                    <p>Customers may cancel their reservations of movie tickets provided they do so at least 24 hours prior to the start of the movie. Cancellations received after this time will not be eligible for a refund.</p>

                    <h2 style="font-size: 25px;">Process of Cancellation</h2>
                    <p>Customers may cancel their reservation by contacting our customer service department. When calling, customers must provide their reservation number, the name of the movie, and the date and time of the screening.</p>

                    <h2 style="font-size: 25px;">Refunds</h2>
                    <p>Customers will receive a full refund within 7-10 business days of the cancellation. Refunds will be issued to the same payment method used for the original purchase. </p>

                    <p>If you have any questions, or if you need to cancel your movie ticket reservation, please contact us at via abccinema@gmail.com.</p>
                </div>

            </div>
        </div>



        <!--Footer-->
        <div class="container-fluid" style=" background-image:url(images/footer1.jpg); margin-top: 30px;height: 300px;" id="footer-font">
            <div class="row">
                <div class="col">
                    <img src="images/abccinema.png" style=" height: 100px;width: 60px;">
                    <p>ABC Cinema is the one of leading company in film industry.</p>


                </div>
                <div class="col" style=" margin-top: 30px;">
                    <h2 style=" margin-bottom: 30px; font-size: 23px;">Useful Links</h2>

                    <div class="ff-footer">
                        <p id="aa"  style=" font-size: 16px;"><a href="About.jsp" style="text-decoration: none; color: white;"> About ABC</a></p>
                        <p id="aa" style=" font-size: 16px;   "><a href="CRUser.jsp" style="text-decoration: none; color: white;"> Cancel Reservation</a></p>
                        <p id="aa" style=" font-size: 16px;   "><a href="Feedback.jsp" style="text-decoration: none; color: white;"> Feedback</a></p>
                    </div>
                </div>

                <div class="col" style=" margin-top: 30px;">
                    <h2 style=" margin-bottom: 30px;  font-size: 23px;">Quick Links</h2>
                    <div class="ff-footer" style=" font-size: 10px;">
                        <p id="aa" style=" font-size: 16px;"><a href="News.jsp" style="text-decoration: none; color: white;">News</a></p>
                        <p id="aa" style=" font-size: 16px;"><a href="Faq.jsp" style="text-decoration: none; color: white;">Faq</a></p>
                        <p id="aa" style=" font-size: 16px;"><a href="Rpolicies.jsp" style="text-decoration: none; color: white;">Refund Policy</a></p>
                    </div>
                </div>

                <div class="col" style=" margin-top: 30px;">
                    <h2 style=" margin-bottom: 30px;  font-size: 23px;" >Contact</h2>
                    <div class="ff-footer">
                        <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-phone"></i>&nbsp011-1111111</p>
                        <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-location-dot"></i>&nbsp Colombo-3</p>
                        <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-envelope"></i>&nbsp abccinema07@gmail.com</p>
                    </div>
                </div>

                <div class="col" style=" margin-top: 30px;">
                    <h2 style=" margin-bottom: 30px;  font-size: 23px;" >Follow us</h2>
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

    </div>
</body>
</html>
