<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ABC Cinema- Home</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


        <!--External CSS Links-->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/carousel_1.css">
        <link rel="stylesheet" href="css/header_carousel.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/vplaybtn.css">
        <link rel="stylesheet" href="css/preloader.css">

        <style>

            #abcd{
                background-color:appworkspace;
                margin-bottom: 0px;
            }
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

            /* Vertical Line*/ 
            .vl {
                border-left: 3px solid green;
                height: 70px;
                border-bottom: .5px solid background;
            }
            /* Vertical Line*/ 

            /* parallax Image*/ 
            .parallax{
                background: url('images/abominable-animated-movie-everest-multfilm-deti-multik-ieti.jpg') repeat fixed 100%;
                height: 400px;
                background-size: cover;
                color: aliceblue;
            }
            /* parallax Image*/ 

        </style>

    </head>


    <body style=" background-color: rgb(6, 15, 25);">


        <div class="loader_bg">
            <div class="loader"></div>
        </div>

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
                <ul class="navbar-nav mx-auto ">


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

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                        </ul>

                    </div>

                </ul>
            </div>
        </nav>
        <!--Navigation Bar Info-->


        <!--Carousel Info-->
        <header>
            <div class="owl-carousel owl-theme">
                <div class="item">
                    <img src="images/wallpapersden.com_avatar-2-the-way-of-water-movie-poster_1366x768.jpg" >
                    <div class="cover">
                        <div class="container">
                            <div class="header-content">
                                <div class="line"></div>
                                <h2>Avatar: The Way of Water</h2>

                                <h4>"When we reach the deep, we will discover our true selves".</h4>
                            </div>
                        </div>
                    </div>
                </div> 

                <div class="item">
                    <img src="images/wallpapersden.com_daisy-edgar-jones-where-the-crawdads-sing-2022_1366x768.jpg" alt="images not found">
                    <div class="cover">
                        <div class="container">
                            <div class="header-content">
                                <div class="line animated bounceInLeft"></div>
                                <h2>Where the Crawdads Sing</h2>

                                <h4>"I didn't want to be nobody's burden. I wanted to be my own person, my own creature." -Kya</h4>
                            </div>
                        </div>
                    </div>
                </div>  

                <div class="item">
                    <img src="images/wallpapersden.com_nicole-kidman-4k-the-northman_1366x768.jpg" alt="images not found">
                    <div class="cover">
                        <div class="container">
                            <div class="header-content">
                                <div class="line animated bounceInLeft"></div>
                                <h2>The Northman</h2>

                                <h4>"What's done cannot be undone, but justice can still be served." - King Harald</h4>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </header>
        <!--Carousel Info-->

        <div class="container" style=" height: 5px; margin-top: 40px;">
            <h2 class="vl" style=" color: white;">&nbsp Now Playing</h2>
            <hr style=" background-color: white;">
            <div class="container" style=" margin-right: -50px; margin-top:-20px;">
                <div class="tranding-slider-control" style=" margin-left: 900px;">
                    <div class="swiper-button-prev slider-arrow">
                        <ion-icon name="arrow-back-outline"style=" border-radius: 0px; "></ion-icon>
                    </div>
                    <div class="swiper-button-next slider-arrow">
                        <ion-icon name="arrow-forward-outline"></ion-icon>
                    </div>

                </div>
            </div>
        </div>

        <!--Now Playing Section-->
        <section id="tranding" style=" margin-top: 30px; margin-bottom: 50px;">



            <div class="container">
                <div class="swiper tranding-slider">
                    <div class="swiper-wrapper">
                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide" >
                            <div class="tranding-slide-img">
                                <img src="images/16well-turningred-videoSixteenByNineJumbo1600.jpg"  style=" border-radius: 0px;" >
                            </div>
                            <div class="tranding-slide-content">

                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>Turning Red</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;7/10</i> 

                                            <button type="button" class="btn btn-primary rounded-pill">Fantasy</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Comedy</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/Wheel-Of-Fortune-and-Fantasy-Part-2.jpg" alt="Tranding"style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>Wheel of Fortune and Fantasy</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;7.5/10</i> 
                                            <button type="button" class="btn btn-primary rounded-pill">Animation</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Comedy</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Short</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/5623.webp" alt="Tranding"style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>TÁR</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;8.4/10</i> 
                                            <button type="button" class="btn btn-primary rounded-pill">Drama</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Musical</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/a-hero-HERO_2022_UT_210610_SHOAMI_00010_rgb.webp" style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>A Hero</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;7.5/10</i> 
                                            <button type="button" class="btn btn-primary rounded-pill">Drama</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Narrative</button>
                                    </h2>   
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/top-gun-maverick-tom-cruise-jennifer-connelly.webp" alt="Tranding"style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>Top Gun: Maverick</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;8.4/10</i> 
                                            <button type="button" class="btn btn-primary rounded-pill">Action</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Adventure</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/the-fabelmans-blogroll-1663026457982.jpg" style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>The Fabelmans</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;7.7/10</i> 

                                            <button type="button" class="btn btn-primary rounded-pill">Drama</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->

                        <!-- Slide-start -->
                        <div class="swiper-slide tranding-slide">
                            <div class="tranding-slide-img">
                                <img src="images/1173b362133c3cd365de38dcb2837d84fd-12-need-for-speed.2x.h473.w710.webp" alt="Tranding"style=" border-radius: 0px;">
                            </div>
                            <div class="tranding-slide-content">
                                <div class="tranding-slide-content-bottom">
                                    <h2 class="food-name">
                                        <p>Need for Speed</p>
                                        <p style=" font-size: 14px;">IMDB RATING<p><i class="fa fa-star" aria-hidden="true">&nbsp;6.4/10</i> 

                                            <button type="button" class="btn btn-primary rounded-pill">Action</button>
                                            <button type="button" class="btn btn-primary rounded-pill">Drama</button>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <!-- Slide-end -->
                    </div>

                </div>
            </div>
        </section>
        <!--Top Movies Section-->


        <!--Upcoming Movies-->

        <div class="container" style=" height: 5px; margin-bottom: 140px; margin-top: -160px;">
            <h2 class="vl" style=" color: white;">&nbsp Upcomming Movies</h2>
            <hr style=" background-color: white;">
        </div>


        <div class="container"  >

            <div class="row" >
                <div class="col" style=" margin-top: 50px;">
                    <div class="video" style=" height: 505px;  background: linear-gradient(to left,rgba(0,0,0,.5),rgba(0,0,0,.5)),url(images/wallpapersden.com_netflix-bigbug-movie_1366x768.jpg);background-size: cover;" >
                        <ion-icon name="play" class="ccc" ></ion-icon>
                        <div class="text-block">
                            <p>Big Bug is a 1999 American science fiction comedy film <i class="fa-solid fa-arrow-right" style=" margin-left: 70px;"></i></p>

                            <p></p>

                        </div>
                        <p><i class="fa-solid fa-arrow-right-from-arc"></i></p>s
                    </div>
                </div>

                <div class="col" style=" margin-top: 50px;">
                    <div class="video" style=" height: 505px;background: linear-gradient(to left,rgba(0,0,0,.5),rgba(0,0,0,.5)),url(images/wp11628743-buckbeak-harry-potter-wallpapers.jpg);background-size: cover;">
                        <ion-icon name="play" style=" "></ion-icon>
                        <div class="text-block">

                            <p>Harry Potter is a popular fantasy book series <i class="fa-solid fa-arrow-right" style=" margin-left: 70px;"></i></p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--Upcoming Movies-->



        <!--Comming Soon-->
        <div class="container" style=" height: 5px; margin-bottom: 150px; margin-top: 80px;">
            <h2 class="vl" style=" color: white;">&nbsp Coming Soon</h2>
            <hr style=" background-color: white;">
        </div>



        <!--Parallax Scrolling Section-->
        <div>    
            <section class="parallax">
                <div class="parallax-inner" style=" text-align: center">
                    <br>
                    <h1>Abominable</h1>
                    <p>Three teenagers must help a Yeti return to his family while avoiding a wealthy man and a zoologist who want him for their own needs.</p>

                    <br>
                    <button type="button" class="btn btn-primary rounded-pill">Animation</button>
                    <button type="button" class="btn btn-primary rounded-pill">Adventure</button>
                    <button type="button" class="btn btn-primary rounded-pill">Comedy</button>
                </div>
            </section>
        </div>
        <!--Parallax Scrolling Section-->
        <!--Comming Soon-->




     



        <!--Experience Section-->
        <div class="container" style=" margin-top: 100px;">
            <div class="row">
                <p style=" font-size: 35px; color: white;">Experiences </p>
                <div class="col" style=" color: white;">
                    Dolby Atmos is one of the latest ways to get surrounded by sound - now from above! 
                    This surround sound technology by Dolby Laboratories was first introduced to Sri Lanka by Scope Cinemas! Sound moves around you in three-dimensional space, so you feel like you're inside the action. 
                    Experience how Dolby Atmos transports you from the ordinary into the extraordinary.<br><br>
                    <button type="button" class="btn btn-outline-success" style=" width: 200px; height: 35px; font-size: 15px;"><a href="About.jsp" style=" text-decoration: none;">Read More</a></button>

                </div>
                <div class="col">
                    <img class="img-fluid" alt="100%x280" src="images/Movie-Theater.jpg">
                </div>
            </div>
        </div>
        <!--Experience Section-->
        
        
           <!--Comming Soon-->
         <div class="container" style=" height: 5px; margin-bottom: 150px; margin-top: 50px;">
            <h2 class="vl" style=" color: white;">&nbsp Video Section</h2>
            <hr style=" background-color: white;">
        </div>
        <!--Comming Soon-->


        <!--Video Section-->
        <div class="container-fluid" style=" margin-top: 100px; margin-bottom: 100px;">
            <div class="row">
                <div class="col">
                    <div class="container">
                        <div class="row">
                            <div class="col-7">

                                <video onloadeddata="this.play();this.muted=false;"  loop muted controls>
                                    <source src="videos/Avatar The Way Of Water 20 sec Promo English.mp4" type="video/mp4">

                                </video>

                            </div>

                            <div class="col-5"  >

                                <div  style="  margin-left: 150px; color: white;">
                                    <br>  <br>
                                    <button type="button" class="btn btn-primary rounded-pill">Adventure</button>
                                    <button type="button" class="btn btn-primary rounded-pill">Action</button>
                                    <button type="button" class="btn btn-primary rounded-pill">Fantasy</button>
                                    <br> <br>
                                    <h2>Avatar: The Way of Water</h2>
                                    <br>
                                    <p style=" text-align:justify">
                                        Avatar 3 is the third installment of the Avatar franchise, and it is set to be released in December 2022. 
                                        Avatar 3 will continue the story of Jake Sully and the Na’vi on the planet of Pandora. The movie will 
                                        feature new cast members, including Kate Winslet and David Thewlis, in addition to returning cast members 
                                        Sam Worthington, Zoe Saldana, and Sigourney Weaver. The plot of the movie is currently unknown, but it is 
                                        expected to focus on the further exploration of the planet and the adventures of the Na’vi.</p>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Video Section-->


        <div class="container" style=" height: 5px; margin-bottom: 150px; margin-top: -20px;">
            <h2 class="vl" style=" color: white;">&nbsp News</h2>
            <hr style=" background-color: white;">
        </div>

        <!--Latest News Section-->
        <div class="container" style=" margin-top: 50px;">
            <div class="row">

                <div class="col">
                    <img src="images/maxresdefault.jpg" style="height:600px; width: 600px;">
                    <div class="text-block">
                        <br>
                        <button type="button" class="btn btn-primary rounded-pill">Adventure</button>
                        <button type="button" class="btn btn-primary rounded-pill">Action</button>
                        <button type="button" class="btn btn-primary rounded-pill">Fantasy</button>
                        <h2>Avatar: The Way of Water</h2>
                        <p>Jake Sully lives with his newfound family formed on the extrasolar moon Pandora</p>

                    </div>
                </div>

                <div class="col">
                    <div class="row">

                        <div class="col">
                            <img src="images/82504.jpg"  style="height:300px; width: 595px;">
                            <div class="text-block">

                                <button type="button" class="btn btn-primary rounded-pill">Adventure</button>
                                <button type="button" class="btn btn-primary rounded-pill">Family</button>
                                <button type="button" class="btn btn-primary rounded-pill">Fantasy</button>
                                <h2>Harry Potter</h2>
                                <p>An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself</p>


                            </div>
                        </div>  
                    </div>

                    <div class="row" style=" margin-top: 5px;">
                        <img src="images/AboutFate_01_06_55_UnitSelect.webp"  style="height:297px; width: 612px;">
                        <div class="text-block"> <br>
                            <button type="button" class="btn btn-primary rounded-pill">Comedy</button>
                            <button type="button" class="btn btn-primary rounded-pill">Romance</button>
                            <h2>About Fate</h2>
                            <p>The romantic comedy is a tale of two people who believe in love</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Latest News Section-->


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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            setTimeout(function () {
                $('.loader_bg').fadeToggle();
            }, 1500);
        </script>


        <!--Script tags-->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>

        <!--External JS Link-->
        <script src="js/header_carousel.js"></script>
        <script src="js/script.js"></script>

        <!--Bootstrap CDN JS Link-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    </body>
</html>