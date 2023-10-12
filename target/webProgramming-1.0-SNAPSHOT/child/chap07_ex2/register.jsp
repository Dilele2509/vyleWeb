<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>

    <!--Meta Keywords and Description-->
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>

    <!--Favicon-->
    <link rel="shortcut icon" href="../../assets/images/favicon.ico" title="Favicon"/>

    <!-- Main CSS Files -->
    <link rel="stylesheet" href="../../assets/css/style.css">

    <!-- Responsive CSS File -->
    <link rel="stylesheet" href="../../assets/css/responsive.css">

    <!-- Namari Color CSS -->
    <link rel="stylesheet" href="../../assets/css/namari-color.css">

    <!--Icon Fonts - Font Awesome Icons-->
    <link rel="stylesheet" href="../../assets/css/font-awesome.min.css">

    <!-- Animate CSS-->
    <link href="../../assets/css/animate.css" rel="stylesheet" type="text/css">

    <!--Google Webfonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status" class="la-ball-triangle-path">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!--End of Preloader-->
<div class="row display-flex contain-inputPage">
    <div class="contain-info info-form regis-form flex-col-imp">
        <h1>Download registration</h1>

        <p>To register for our downloads, enter your name and email
            address below. Then, click on the Submit button.</p>

        <form action="/download02" method="post">
            <input class="info-input" type="hidden" name="action" value="registerUser">
            <label class="regis-label-form">Email:</label>
            <input class="info-input" type="email" name="email" value="${user.email}"><br>
            <label class="regis-label-form">First Name:</label>
            <input class="info-input" type="text" name="firstName" value="${user.firstName}"><br>
            <label class="regis-label-form">Last Name:</label>
            <input class="info-input" type="text" name="lastName" value="${user.lastName}"><br>
            <label>&nbsp;</label>
            <input class="submit-btn" type="submit" value="Register" class="margin_left">
        </form>
        <p class="p-describe">Click on the Back
            button in your browser or the Return button shown
            below.</p>

        <form class="btn-form" action="/child/chap07_ex2/" method="post">
            <input type="hidden" name="action" value="join">
            <button class="cancel-btn" type="submit">
                    <span>Cancel
                  </span>
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke-miterlimit="2" stroke-linejoin="round" fill-rule="evenodd" clip-rule="evenodd"><path fill-rule="nonzero" d="m12.002 2.005c5.518 0 9.998 4.48 9.998 9.997 0 5.518-4.48 9.998-9.998 9.998-5.517 0-9.997-4.48-9.997-9.998 0-5.517 4.48-9.997 9.997-9.997zm0 1.5c-4.69 0-8.497 3.807-8.497 8.497s3.807 8.498 8.497 8.498 8.498-3.808 8.498-8.498-3.808-8.497-8.498-8.497zm0 7.425 2.717-2.718c.146-.146.339-.219.531-.219.404 0 .75.325.75.75 0 .193-.073.384-.219.531l-2.717 2.717 2.727 2.728c.147.147.22.339.22.531 0 .427-.349.75-.75.75-.192 0-.384-.073-.53-.219l-2.729-2.728-2.728 2.728c-.146.146-.338.219-.53.219-.401 0-.751-.323-.751-.75 0-.192.073-.384.22-.531l2.728-2.728-2.722-2.722c-.146-.147-.219-.338-.219-.531 0-.425.346-.749.75-.749.192 0 .385.073.531.219z"></path></svg>
                  </span>
            </button>
        </form>
    </div>
</div>

<!-- Include JavaScript resources -->
<script src="../../assets/js/jquery.1.8.3.min.js"></script>
<script src="../../assets/js/wow.min.js"></script>
<script src="../../assets/js/jquery.enllax.min.js"></script>
<script src="https://kit.fontawesome.com/7c3d655189.js" crossorigin="anonymous"></script>
<script src="../../assets/js/jquery.scrollUp.min.js"></script>
<script src="../../assets/js/jquery.easing.min.js"></script>
<script src="../../assets/js/jquery.stickyNavbar.min.js"></script>
<script src="../../assets/js/jquery.waypoints.min.js"></script>
<script src="../../assets/js/images-loaded.min.js"></script>
<script src="../../assets/js/lightbox.min.js"></script>
<script src="../../assets/js/site.js"></script>
<script src="../../assets/js/changePage.js"></script>
</body>
</html>