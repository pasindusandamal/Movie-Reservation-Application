
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <title> Checkout </title>
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




    </head>

    <body onload="callJqueryAjax(), startTimer()">
        <h3 style="text-align: center">PURCHASE SUMMARY</h3>
        <hr>

        <div style=" margin-left: 1200px;">
            <button class="btn btn-danger"><span id="timeLeft"></span></button>
        </div>

        <div class="container" style="margin-top: 20px" >

            <div class="row">
                <div class="col">
                    <form>
                        <fieldset disabled>
                            <div class="mb-3">
                                <hr>
                                <h5>Ticket Count - <%=request.getAttribute("count")%></h5>
                                <h5>Food & Beverage - <%=request.getAttribute("food")%>$</h5>
                                <h5>paid Amount - <%=request.getAttribute("price")%></h5>

                                <hr>
                                <h5>Total   - <%=request.getAttribute("sub")%>$</h5>
                                <hr>                        
                            </div>
                        </fieldset>     
                    </form>

                    <hr>
                    <input type="hidden" id="tamount" value="<%=request.getAttribute("sub")%>">
                    <p>Select your payment method</p>
                    <!-- Set up a container element for the button -->
                    <div id="paypal-button-container"></div>

                    <div id="smart-button-container">
                        <div style="text-align: center;">
                            <div id="paypal-button-container"></div>
                        </div>
                    </div>

                    <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>

                    <script>
        function initPayPalButton() {
            var value = document.getElementById('tamount').value;
            paypal.Buttons({
                style: {
                    shape: 'rect',
                    color: 'blue',
                    layout: 'vertical',
                    label: 'checkout',

                },

                createOrder: function (data, actions) {
                    return actions.order.create({
                        purchase_units: [{"amount": {"currency_code": "USD", "value": value}}]
                    });
                },

                onApprove: function (data, actions) {
                    return actions.order.capture().then(function (orderData) {

                        // Full available details
                        console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                        // Show a success message within this page, e.g.
                        const element = document.getElementById('paypal-button-container');
                        element.innerHTML = '';
                        element.innerHTML = '<h3>Thank you for your payment!</h3>',
                                actions.redirect('send_email.jsp');

                    });
                },

                onError: function (err) {
                    console.log(err);
                }
            }).render('#paypal-button-container');
        }
        initPayPalButton();
                    </script>





                </div>

                <div class="col" style="">

                    <form>


                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Full Name</label>
                            <input type="text" id="fname" class="form-control " name="fname" value="<%=request.getAttribute("name")%>"  placeholder="<%=request.getAttribute("name")%>">
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Mobile Number</label>
                            <input type="text" id="mobile" class="form-control " name="mobile" value="<%=request.getAttribute("mobile")%>" >
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Email</label>
                            <input type="text" id="email" class="form-control " name="email" value="<%=request.getAttribute("email")%>"   placeholder="<%=request.getAttribute("email")%>">
                        </div>

                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">ID Number</label>
                            <input type="text" id="idno" class="form-control " name="idno" value="<%=request.getAttribute("idno")%>">
                        </div>

                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Film Name</label>
                            <input type="text" id="mname" name="mname" class="form-control" value="<%=request.getAttribute("movname")%>" >
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Date </label>
                            <input type="text" id="date" class="form-control " name="date" value="<%=request.getAttribute("date")%>">
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Time</label>
                            <input type="text" id="time" class="form-control " name="time"  value="<%=request.getAttribute("time1")%>">
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Ticket Count</label>
                            <input type="text"  id="tcount" class="form-control" name="tcount" value="<%=request.getAttribute("count")%>">
                        </div>
                        <div class="mb-3">
                            <label for="disabledTextInput" class="form-label">Total Amount(price rate calculated under current dollar rate) </label>
                            <input type="text"  id="price" class="form-control" name="price"  value="<%=request.getAttribute("sub")%> ">
                        </div>



                    </form>

                </div>
            </div>

        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
        <h4 id="result">
            <script>
        function callJqueryAjax() {
            var fname = $('#fname').val();
            var email = $('#email').val();
            var mobile = $('#mobile').val();
            var idno = $('#idno').val();
            var mname = $('#mname').val();
            var date = $('#date').val();
            var time = $('#time').val();
            var tcount = $('#tcount').val();
            var price = $('#price').val();
            $.ajax({
                url: 'summery',
                method: 'POST',
                data: {fname: fname, email: email, mobile: mobile, idno: idno, mname: mname, date: date, time: time, tcount: tcount, price: price},
                success: function (resultText) {
                    ('#result').html(resultText);
                },
                error: function (jqXHR, exception) {
                    console.log('Error occured!!');
                }
            });
            // element.innerHTML = '';
            // element.innerHTML = '<h3>You will reserve confirmation email!</h3>';
            // document.location.href = "index.jsp";
        }
        ;
            </script>






            <script>
                // Set the time period to 5 minutes
                var timePeriod = 5 * 60 * 1000;

                // Set the time count to 0 
                var timeCount = 0;

                // Create a timer to count down
                function startTimer() {
                    setInterval(function () {
                        timeCount++;
                    }, 1000);
                }

                // When the page is loaded, start the timer 
                // window.onload = startTimer;

                // Set a timeout to switch to the next page after 5 minutes
                setTimeout(function () {
                    window.location.href = "index.jsp";
                }, timePeriod);
            </script>



            <script>
                // Calculate the remaining time 
                function calculateTimeLeft() {
                    var timeLeft = timePeriod - timeCount * 1000;
                    if (timeLeft <= 0) {
                        timeLeft = 0;
                    }
                    // Calculate the minutes and seconds left
                    var minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60));
                    var seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);
                    // Display minutes and seconds in the page
                    document.getElementById("timeLeft").innerHTML = minutes + "m " + seconds + "s ";
                }
                // Update the time left every second 
                setInterval(calculateTimeLeft, 1000);
            </script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>





    </body>

</html>

