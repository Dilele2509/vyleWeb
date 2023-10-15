<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks for Join</title>

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
    <div class="contain-info">
        <h1 style="text-align: center">Thanks for joining our<br>email list</h1>

        <p>Here is the information that you entered:</p>

        <div class="entered-info">
            <label>Email:</label>
            <span>${user.email}</span><br>
            <label>First Name:</label>
            <span>${user.firstName}</span><br>
            <label>Last Name:</label>
            <span>${user.lastName}</span><br>
        </div>

        <p class="describe-entered-info">This email address was added to our list on ${requestScope.currentDate}</p>

        <p class="describe-entered-info">The first address on our list is ${sessionScope.users[0].email}<br>
            The second address on our list is ${sessionScope.users[1].email}
        </p>

        <p class="describe-entered-info">For customer service, contact ${initParam.custServEmail}</p>

        <p style="text-align: center">Click the Return button shown below to return previous page</p>
        <br>
        <form action="/child/chap08_ex1/" method="post">
            <input type="hidden" name="action" value="join">
            <button class="return-btn" type="submit">Return
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