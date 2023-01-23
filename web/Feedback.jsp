

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema - Feedback</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

        <!--External CSS Links-->


        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">

        <link rel="stylesheet" href="css/preloader.css">

        <style>
            .rating {
                margin-bottom: 10px; 
                margin-top: 50px; 
                margin-right:450px;
            }

            /* Hide radio buttons */
            .rating > input {
                display: none;
            }

            /* Create stars */
            .rating > label:before {
                margin: 5px;
                font-size: 1.25em;
                font-family: FontAwesome;
                display: inline-block;
                content: "\f005";
            }

            /* Color stars */
            .rating > label {
                color: #ddd;
                float: right;
            }

            /* Set stars color on hover */
            .rating > input:checked ~ label, /* show gold star when clicked */
            .rating:not(:checked) > label:hover, /* hover current star */
            .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

            /* Set stars color when checked */
            .rating > input:checked + label:hover, /* hover current star when changing rating */
            .rating > input:checked ~ label:hover, /* hover previous stars in list when changing rating */
            .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
            .rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 

        </style>
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

            </div>
        </nav>
        <!--Navigation Bar Info-->


        <br> <br>
        <br>
        <h2 style=" margin-left: 500px;">Your Opinion matters</h2>

        <hr>


        <div class="container" >
            <div class="row" >
                <div classs="col" >
                    <form action="Feedback" method="post">
                        <div class="rating" style=" margin-left: 100px;">
                            <input type="radio" id="star5" name="rating" value="Superb" /><label for="star5" >5 stars</label>
                            <input type="radio" id="star4" name="rating" value="Very Good" /><label for="star4" >4 stars</label>
                            <input type="radio" id="star3" name="rating" value="Good" /><label for="star3" >3 stars</label>
                            <input type="radio" id="star2" name="rating" value="Satisfied" /><label for="star2" >2 stars</label>
                            <input type="radio" id="star1" name="rating" value="Completely Unsatisfied" /><label for="star1" >1 star</label>                     
                        </div>
                        <div style=" width: 510px; margin-left: 240px;">
                            <div class="mb-3">
                                <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="Enter Name" style="width: 500px; margin-top: 10px; border-radius: 0px; margin-left: 5px;">

                            </div>
                            <textarea class="form-control" name="feedback" id="exampleFormControlTextarea1" rows="3" placeholder="Say Something" style="width: 500px; border-radius: 0px;  margin-top: 5px;  margin-left: 5px;"></textarea>
                            <button type="submit" class="btn btn-success" style="width: 500px;  margin-top: 10px; border-radius: 0px;  margin-left: 5px;" >Submit</button>
                    </form>
                </div>
            </div>

        </div>
    </div>


    <br>

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
                <h2 style=" margin-bottom: 30px; font-size: 23px;">Quick Links</h2>
                <div class="ff-footer" style=" font-size: 10px;">
                    <p id="aa" style=" font-size: 16px;"><a href="News.jsp" style="text-decoration: none; color: white;">News</a></p>
                    <p id="aa" style=" font-size: 16px;"><a href="terms and condition.jsp" style="text-decoration: none; color: white;">Terms and Condition</a></p>
                    <p id="aa" style=" font-size: 16px;"><a href="Rpolicies.jsp" style="text-decoration: none; color: white;">Refund Policy</a></p>
                </div>
            </div>

            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px; font-size: 23px;" >Contact</h2>
                <div class="ff-footer">
                    <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-phone"></i>&nbsp011-1111111</p>
                    <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-location-dot"></i>&nbsp Colombo-3</p>
                      <p id="aa" style=" font-size: 16px;"><i class="fa-solid fa-envelope"></i>&nbsp abccinema07@gmail.com</p>
                </div>
            </div>

            <div class="col" style=" margin-top: 30px;">
                <h2 style=" margin-bottom: 30px; font-size: 23px;" >Follow us</h2>
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
