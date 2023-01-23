<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema-Movies</title>

        <!--Font Awesome CDN Links-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />



        <!--Bootstrap CDN Links-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


        <!--External CSS Links-->


        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">

        <link rel="stylesheet" href="css/preloader.css">
        <style>

            .bg-light {
                background: #eef0f4;
            }

            .choices__list--dropdown .choices__item--selectable {
                padding-right: 1rem;
            }

            .choices__list--single {
                padding: 0;
            }

            .card {
                transform: translateY(-50%);
            }

            .choices[data-type*=select-one]:after {
                right: 1.5rem;
            }



            a {
                text-decoration: none;
                color: inherit;
                transition: all 0.3s;
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

                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                        </ul>

                    </div>

                </ul>
            </div>
        </nav>
        <!--Navigation Bar Info-->


        <div class="container" style=" margin-top: 100px;">
            <h2>Choose Your Film</h2>
        </div>




        <div class="container" style=" margin-top: 70px;">

            <div class="row">
                <div class="col">

                    <section class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="card border-0">
                                        <div class="card-body p-0">
                                            <form action="moveinfo" method="post">


                                                <!-- AUTO COMPLETE DROPDOWN -->
                                                <select class="selectpicker form-control rounded shadow" name="abc" style=" width: 350px; margin-left: -20px;">
                                                    <option value="AVATAR: THE WAY OF WATER (3D)">AVATAR: THE WAY OF WATER (3D)</option>
                                                    <option value="Turning Red">Turning Red</option>
                                                    <option value="Need for Speed">Need for Speed</option>
                                                    <option value="A Hero">A Hero</option>
                                                    <option value="The Fabelmanst">The Fabelmans</option>
                                                    <option value="Top Gun: Maverick ">Top Gun: Maverick </option>
                                                    <option value="Wheel of Fortune and Fantasy">Wheel of Fortune and Fantasy</option>

                                                </select> 
                                                <button type="submit" class="btn btn-primary" style=" margin-left: 350px; margin-top: -65px; width: 170px;">Search</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </section>

                    <div class="container" style=" margin-top: -80px; margin-left: -20px;">
                        <form action="movies" method="post">
                            <label>Movie Name</label>
                            <input type="text" id="disabledTextInput" name="movname" class="form-control " value="<%=request.getAttribute("movname")%>" placeholder="<%=request.getAttribute("movname")%>">

                            <label>Movie Location</label>
                            <input type="text" id="disabledTextInput" name="movelocation" class="form-control " value="<%=request.getAttribute("movelocation")%>"  placeholder="<%=request.getAttribute("movelocation")%>">


                            <label>Ticket Price</label>
                            <input type="text" id="disabledTextInput" name="tkprice" class="form-control " value="<%=request.getAttribute("tkprice")%>"  placeholder="<%=request.getAttribute("tkprice")%>">


                            <label>Time Slots</label><br>
                            <input class="form-check-input" type="checkbox" name="time1" id="flexRadioDefault1" value="<%=request.getAttribute("time1")%>"><%=request.getAttribute("time1")%><br> 
                            <label>Date</label>
                            <input type="date"  name="date" id="txtDate" required="Required" class="form-control" name="txtDate" placeholder="Select suitable date" />

                            <label>Choose Available Time Slot</label><br>
                            <input class="form-check-input" type="checkbox" name="time1" id="flexRadioDefault1"value="<%=request.getAttribute("time1")%>"><%=request.getAttribute("time1")%> <br>

                            <button type="submit" class="btn btn-primary" style=" margin-left: 370px;  width: 150px;">Continue</button>
                        </form>
                    </div>  
                </div>

                <div class="col" style=" margin-top: -58px;">


                    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">

                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="10000">
                                <img src="images/wallpapersden.com_avatar-2-the-way-of-water-movie-poster_1366x768.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Avatar: The Way of Water</h5>
                                    <p>"When we reach the deep, we will discover our true selves".</p>
                                </div>
                            </div>
                            <div class="carousel-item" data-bs-interval="2000">
                                <img src="images/wallpapersden.com_netflix-bigbug-movie_1366x768.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Big Bug</h5>
                                    <p>Some representative placeholdewallpapersden.com_daisy-edgar-jones-where-the-crawdads-sing-2022_1366x768.jpgr content for the second slide.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="images/wallpapersden.com_daisy-edgar-jones-where-the-crawdads-sing-2022_1366x768.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Where the Crawdads Sing</h5>
                                    <p>"I didn't want to be nobody's burden. I wanted to be my own person, my own creature." -Kya</p>
                                </div>
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

        <script>
            window.onload = function () {
                var today = new Date().toISOString().split('T')[0];
                document.getElementsByName("date")[0].setAttribute('min', today);
            }
        </script>


        <script>
            const sorting = document.querySelector('.selectpicker');
            const commentSorting = document.querySelector('.selectpicker');
            const sortingchoices = new Choices(sorting, {
                placeholder: false,
                itemSelectText: ''
            });


            // Trick to apply your custom classes to generated dropdown menu
            let sortingClass = sorting.getAttribute('class');
            window.onload = function () {
                sorting.parentElement.setAttribute('class', sortingClass);
            }
        </script>


        <script>
            var today = new Date().toISOString().split('T')[0];
            document.getElementsByName("txtDate")[0].setAttribute('min', today);
        </script>
    </script>

</body>
</html>
