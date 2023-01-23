<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Cinema-About</title>
        <!--External CSS Links-->
        <link rel="stylesheet" href="css/navbar.css">

        <!--Bootstrap CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--Font awesome CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


        <style>

            /* Footer*/ 
            #footer-font{
                color:white;
                font-weight: 400px;
            }

            #aa:hover{
                transform: translateY(-10px);
            }

            #aa{          
                color: white;
                font-size: 20px;
                font-weight: 500; 
                transition: transform 250ms;
            }

            .ff-footer{
                font-size: 20px;
            }
            /* Footer*/ 

        </style>

    </head>

    <body style=" background-color: rgb(6, 15, 25); color:white;">


        <!--Navigation Bar Info-->
        <nav class="navbar   navbar-expand-sm navbar-light bg-dark fixed-top">

            <a class="navbar-brand" href="#">
                <img src="images/abccinema.png" style=" height: 50px; width: 40px;" class="d-inline-block align-text-top">   
            </a>

            <button class="navbar-toggler" type="button"  data-bs-toggle="collapse" data-bs-target="#navbarToggler9"
                    aria-controls="navbarToggler9" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarToggler9">
                <ul class="navbar-nav mx-auto ">

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



        <!--Section 1-->
        <div class="container" style=" margin-top: 70px;">
            <div class="row">
                <div class="col" style=" border: 1px solid black; text-align: center;">
                    <img src="images/3d.png">  
                    <p>3D-Facility</p>
                </div>
                <div class="col">
                    <div class="col" style=" border: 1px solid black;  text-align: center;">
                        <img src="images/dish.png">  
                        <p>Food & Bevarage</p>
                    </div>
                </div>
                <div class="col">
                    <div class="col" style=" border: 1px solid black;  text-align: center;">
                        <img src="images/park.png">  
                        <p>Parking-Facility</p>
                    </div>
                </div>
                <div class="col">
                    <div class="col" style=" border: 1px solid black;  text-align: center;">
                        <img src="images/wifi-signal.png">  
                        <p>Free wifi</p>
                    </div>
                </div>
            </div>
        </div>
        <!--Section 1-->


        <!--Section 2-->
        <div class="container" style=" margin-top: 100px;">
            <div class="row">
                <p style=" font-size: 35px;">Experiences </p>
                <div class="col">
                    <img class="img-fluid" alt="100%x280" src="images/Movie-Theater.jpg">
                </div>
                <div class="col">

                    <p>Stadium Seating: Stadium seating provides sloped rows of seating, allowing for unobstructed views of the screen and better sight lines.</p>

                    <p>Surround Sound: Surround sound systems provide a powerful, multi-dimensional audio experience.</p>

                    <p>Concessions: Concessions stands offer a variety of snacks and drinks for purchase.</p>

                    <p>Reserved Seating: Reserved seating allows patrons to select their seat in advance and arrive to the theater knowing their seat is waiting.</p>

                    <p>Online Ticketing: Online ticketing allows moviegoers to purchase their tickets in advance, eliminating the need to wait in line at the theater.</p>


                </div>

            </div>
        </div>
        <!--Section 2-->


        <!--Section 3-->
        <div class="container" style=" margin-top: 100px;">
            <div class="row">
                <p style=" font-size: 35px;">Food & Beverage</p>
                <div class="col">
                    Movie theaters typically offer a variety of food and beverage items, including popcorn, candy, 
                    soft drinks, and other snacks. Popcorn is the most popular snack at movie theaters, and is often served with butter, salt, 
                    or other seasonings. Candy, such as chocolate bars and gummies, is another popular snack, and many movie theaters also offer ice cream, 
                    hot dogs, and nachos. Soft drinks,
                    such as soda, are often sold in large containers or cups, and may be accompanied by a variety of flavors to choose from.

                </div>
                <div class="col">
                    <img class="img-fluid" alt="100%x280" src="images/Untitled-design-2-3.jpg">
                </div>
            </div>
        </div>
        <!--Section 3-->


        <!--Section 4-->
        <div class="container" style=" margin-top: 100px;">
            <div class="row">
                <p style=" font-size: 35px;">Parking</p>
                <div class="col">
                    <img class="img-fluid" alt="100%x280" src="images/1_0x0_790x520_0x520_bay_parking_guide.jpg">
                </div>
                <div class="col">
                    Movie halls typically have a large parking area that is well lit and monitored for security. 
                    The parking lot is usually located close to the entrance so that patrons can easily park their cars and walk to the theater.
                    Many movie theaters also offer valet parking services to make it easier for customers to park their cars.
                </div>

            </div>
        </div>
        <!--Section 4-->


        <!--Section 5-->
        <div class="container" style=" margin-top: 100px;">
            <div class="row">
                <p style=" font-size: 35px;">Free wifi</p>
                <div class="col">

                    The Wi-Fi facility of movie halls allows customers to easily access the internet while they enjoy the movie. 
                    It enables them to watch trailers, post reviews, and look up information about the movie. 
                    It also allows customers to stay connected with friends and family, chat with them, and even shop online.

                </div>
                <div class="col">
                    <img class="img-fluid" alt="100%x280" src="images/Technology-Inline-700x350-WIFI.jpg">
                </div>
            </div>
        </div>
        <!--Section 5-->





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
                        <p id="aa" style=" font-size: 16px;"><a href="CRUser.jsp" style="text-decoration: none; color: white;"> Cancel Reservation</a></p>
                        <p id="aa" style=" font-size: 16px;"><a href="Feedback.jsp" style="text-decoration: none; color: white;"> Feedback</a></p>
                    </div>
                </div>

                <div class="col" style=" margin-top: 30px; font-size: 23px;">
                    <h2 style=" margin-bottom: 30px;  font-size: 23px;">Quick Links</h2>
                    <div class="ff-footer" style=" font-size: 10px;">
                        <p id="aa" style=" font-size: 16px;"><a href="News.jsp" style="text-decoration: none; color: white;">News</a></p>
                        <p id="aa" style=" font-size: 16px;"><a href="Faq.jsp" style="text-decoration: none; color: white;">Faq</a></p>
                        <p id="aa" style=" font-size: 16px;"><a href="Rpolicies.jsp" style="text-decoration: none; color: white;">Refund Policy</a></p>
                    </div>
                </div>

                <div class="col" style=" margin-top: 30px; font-size: 23px;">
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



    </body>
</html>
