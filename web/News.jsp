<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema-News</title>

        <!--External CSS Links-->
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!--Bootstrap CSS Links-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


        <style>
            /* Text place on image*/ 
            .text-block {
                background-color: black;
                position: absolute;
                bottom: 20px;
                right: 20px;
                color: white;
                margin-left: 15px;
                padding-left: 65px;
                opacity: 0.5;

                /* Text place on image*/ 
            }
        </style>

    </head>
    <body>

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



        <div class="container" style=' margin-top: 120px;'>
            <div class="row">
                <div class="col col-8">
                    <div class="row">
                        <img src="images/wp11628743-buckbeak-harry-potter-wallpapers.jpg" class="d-block w-100" alt="...">
                        <div class="text-block" style=" width: 700px; margin-right:490px; margin-bottom: -20px;">
                            <p>Harry Potter is a popular fantasy book series </p>
                            <h2>The Last of Us Creator Reveals Why</h2>

                        </div>
                    </div>
                    <div class="row" style=' margin-top: 5px;'>
                        <div class="col">
                            <img src="images/Ant-man-and-the-wasp-Quantumania-cassie.avif" style=" height: 202px;"class="d-block w-100" alt="...">
                            <p>Ant-Man and the Wasp: Quantumania </p>
                            <h2 style=" font-size: 16px;">Upcoming third installment in the Marvel Cinematic Universe’s Ant-Man franchise</h2>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023 &nbsp&nbsp&nbsp&nbsp <i class="fa-solid fa-comments"></i>&nbsp 0 Comment
                        </div>
                        <div class="col">
                            <img src="images/Aquaman-Movie-Poster-Aquaman-Classic-Costume-e0110b2.jpg" style=" height: 202px;" class="d-block w-100" alt="...">
                            <p>Aquaman 2</p>
                            <h2 style=" font-size: 16px;">Aquaman 2 is the sequel to the 2018 blockbuster Aquaman</h2>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023 &nbsp&nbsp&nbsp&nbsp <i class="fa-solid fa-comments"></i>&nbsp 0 Comment
                        </div>
                    </div>
                </div>
                <div class="col col-4">
                    <div class="row">
                        <div class="col">
                            <img src="images/441112_1314947_updates.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="col">
                            <p><div class="container" style=' height: 30px; width: 100px;background-color: brown; border-radius: 15px; margin-top: -15px;'>
                                <b><div style=' font-size: 15px; color: white'>Action</div></b></i> 
                            </div> 
                            <p>Brie Larson reveals new details about character in Fast X </p>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023
                        </div>
                    </div>
                    <div class="row" style=' margin-top: 7px;'>
                        <div class="col">
                            <img src="images/66rdf1h8_tom-cruise_625x300_24_May_22.webp" class="d-block w-100" alt="...">

                        </div>
                        <div class="col">
                            <p><div class="container" style=' height: 30px; width: 100px;background-color: brown; border-radius: 15px;'>
                                <b><div style=' font-size: 15px; color: white'>Action</div></b></i> 
                            </div> 
                            <p>Mission Impossible 7 Trailer: Tom Cruise Is Back As Ethan Hunt And How </p>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023
                        </div>
                    </div>

                    <div class="row" style=' margin-top: 7px;'>
                        <div class="col">
                            <img src="images/the-nun-sequel-details-550x309.webp" class="d-block w-100" alt="...">

                        </div>
                        <div class="col">
                            <p><div class="container" style=' height: 30px; width: 100px;background-color: brown; border-radius: 15px;'>
                                <b><div style=' font-size: 15px; color: white'>Horror</div></b></i> 
                            </div> 
                            <p>The Nun 2 plot details teased by casting announcement </p>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023
                        </div>
                    </div>

                    <div class="row" style=' margin-top: 7px;'>
                        <div class="col">
                            <img src="images/maxresdefault1.jpg" class="d-block w-100" alt="...">

                        </div>
                        <div class="col">
                            <p><div class="container" style=' height: 30px; width: 100px;background-color: brown; border-radius: 15px;'>
                                <b><div style=' font-size: 15px; color: white'>Horror</div></b></i> 
                            </div> 
                            <p>Knock At The Cabin: Everything We Know So Far   </p>


                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023
                        </div>
                    </div>

                    <div class="row" style=' margin-top: 7px;'>
                        <div class="col">
                            <img src="images/uc1pg31rf2371.webp" class="d-block w-100" alt="...">

                        </div>
                        <div class="col">
                            <p><div class="container" style=' height: 30px; width: 100px;background-color: brown; border-radius: 15px;'>
                                <b><div style=' font-size: 15px; color: white'>Drama</div></b></i> 
                            </div> 

                            <p>Michael Fassbender coaches the world's worst soccer team in first look at Taika Waititi's Next Goal Wins </p>
                            <i class="fa-regular fa-calendar-days"></i>&nbsp JAN 03 2023
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br>

        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="images/8346649.jpg" class="d-block w-100" alt="...">

                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="images/wp6823940.jpg" class="d-block w-100" alt="...">

                </div>
                <div class="carousel-item">
                    <img src="images/8346808.jpg" class="d-block w-100" alt="...">

                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>


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
