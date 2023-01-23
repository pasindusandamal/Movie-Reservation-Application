<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="15;url=index.jsp" charset=UTF-8">
<title>ABC Cinema Sample Ticket</title>
<!-- Font Awesome CDN Links-->
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>


<style>
@import url('https://fonts.googleapis.com/css?family=Oswald');


body {
background-color: #dadde6;
font-family: arial
}

.fl-left {
float: left
}

.fl-right {
float: right
}

h1 {
text-transform: uppercase;
font-weight: 900;
border-left: 10px solid #fec500;
padding-left: 10px;
margin-bottom: 30px
}

.row {
overflow: hidden
}

.card {
display: table-row;
width:600px;
background-color: #fff;
color: #989898;
margin-bottom: 10px;
font-family: 'Oswald', sans-serif;
text-transform: uppercase;
border-radius: 4px;
position: relative
}

.card+.card {
margin-left: 2%
}

.date {
display: table-cell;
width: 25%;
position: relative;
text-align: center;
border-right: 2px dashed #dadde6
}

.date:before,
.date:after {
content: "";
display: block;
width: 30px;
height: 30px;
background-color: #DADDE6;
position: absolute;
top: -15px;
right: -15px;
z-index: 1;
border-radius: 50%
}

.date:after {
top: auto;
bottom: -15px
}

.date time {
display: block;
position: absolute;
top: 50%;
left: 50%;
-webkit-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
transform: translate(-50%, -50%)
}

.date time span {
display: block
}

.date time span:first-child {
color: #2b2b2b;
font-weight: 600;
font-size: 250%
}

.date time span:last-child {
text-transform: uppercase;
font-weight: 600;
margin-top: -10px
}

.card-cont {
display: table-cell;
width: 75%;
font-size: 85%;
padding: 10px 10px 30px 50px
}

.card-cont h3 {
color: #3C3C3C;
font-size: 130%
}

.row:last-child .card:last-of-type .card-cont h3 {
text-decoration: line-through
}

.card-cont>div {
display: table-row
}

.card-cont .even-date i,
.card-cont .even-info i,
.card-cont .even-date time,
.card-cont .even-info p {
display: table-cell
}

.card-cont .even-date i,
.card-cont .even-info i {
padding: 5% 5% 0 0
}

.card-cont .even-info p {
padding: 30px 50px 0 0
}

.card-cont .even-date time span {
display: block
}

.card-cont a {
display: block;
text-decoration: none;
width: 80px;
height: 30px;
background-color: #D8DDE0;
color: #fff;
text-align: center;
line-height: 30px;
border-radius: 2px;
position: absolute;
right: 10px;
bottom: 10px
}

.row:last-child .card:first-child .card-cont a {
background-color: #037FDD
}

.row:last-child .card:last-child .card-cont a {
background-color: #F8504C
}

@media screen and (max-width: 860px) {
.card {
display: block;
float: none;
width: 100%;
margin-bottom: 10px
}
.card+.card {
margin-left: 0
}
.card-cont .even-date,
.card-cont .even-info {
font-size: 75%
}
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


<br> <br> <br>
<h2 style=" margin-left: 550px;">Your Ticket will Look Like This</h2>
<br>
<hr>

<div class="container"   >
<div class="row">
<div class="col">
<section class="container">

<br>
<div class="row" style=" margin-left: 300px;">

<article class="card fl-left" style=" background-image: url(images/png-transparent-popcorn-discount-theater-film-cinema-movie-theatre-computer-wallpaper-f.png); background-size: cover;">
<div style=" border-right: 3px solid;"><img src="images/abccinema.png" style=" height: 70px; width: 60px; "></div>
<section class="card-cont">
<p><%=request.getAttribute("name")%></p>
<p><%=request.getAttribute("movname")%></p>
<p><%=request.getAttribute("date")%></p>
<span><%=request.getAttribute("time1")%></span>
<div class="even-date">
</div>
<a href="#">ticket</a>
</section>
</article>
</div>
</section>


<p style=" margin-left: 450px;"><b>Thank you for reserving ticket from us !<b></p>
<p style=" margin-left: 450px;"><b>You will get confirmation mail shortly !<b></p>

    </div>
    <div class="col">
        <div class="mb-3">

            <input type="hidden" class="form-control" id="email" value="<%=request.getAttribute("email")%>" name="fname">
        </div>
        <div class="mb-3">

            <input type="hidden" class="form-control" id="subject" value="<%=request.getAttribute("subject")%>" name="subject">
        </div>
        <div class="mb-3">

            <input type="hidden" class="form-control" id="message"  rows="3" name="message" value="<%=request.getAttribute("message")%>">
        </div>

    </div>
    </div>
    </div>
    <br>


    <h4 id="result">
        <script>
            window.onload = function callJqueryAjax() {
                var subject = $('#subject').val();
                var email = $('#email').val();
                var message = $('#message').val();
                $.ajax({
                    url: 'EmailSendingServlet',
                    method: 'POST',
                    data: {subject: subject, email: email, message: message},
                    //success: function (resultText) {
                    //$('#result').html(resultText);
                    // },
                    // error: function (jqXHR, exception) {
                    // console.log('Error occured!!');
                    // }
                });
                element.innerHTML = '';
                element.innerHTML = '<h3>You will reserve confirmation email!</h3>';
                document.location.href = "index.jsp";
            }
        </script>

        <!--Footer-->
        <div class="container-fluid" style=" background-image:url(images/footer1.jpg); margin-top: 30px; margin-bottom: -5px;height: 300px;" id="footer-font">
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