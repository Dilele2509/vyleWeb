<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<table>
  <tr>
    <th>Name</th>
    <th>Value</th>
  </tr>
  <c:forEach var="c" items="${cookie}">      
  <tr>
    <td>${c.value.name}</td>
    <td>${c.value.value}</td>
  </tr>
  </c:forEach>  
</table>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Cookies</title>

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
        <h1>Cookies</h1>

        <p>Here's a table with all of the cookies that this
            browser is sending to the current server.</p>

        <!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->

        <!-- <c:forEach var="c" items="${cookie}">
            <div class="contain-song col-2 aos-init aos-animate">
                        <div class="cart-custom not-scale cookie-info-container">
                            <div class="cart-custom-content">
                                <h3 class="cookies-info-title">${c.value.name}</h3>
                                <p class="cookies-info-value">${c.value.value}</p>
                            </div>
                        </div>
                    </div>
            </c:forEach>  -->
        <div class="entered-info">
            <div class="list-row list-items">
                <c:forEach var="c" items="${cookie}">
                    <div class="contain-song col-2 aos-init aos-animate">
                        <div class="cart-custom not-scale cookie-info-container">
                            <div class="cart-custom-content">
                                <h3 class="cookies-info-title">${c.value.name}</h3>
                                <p class="cookies-info-value">${c.value.value}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="cookie-btn">
            <!-- return button -->
            <form action="download02?action=viewAlbums" method="post">
                <input type="hidden" name="action" value="join">
                <button class="return-btn" type="submit">Return to List</button>
            </form>

            <!-- delete cookies button -->
            <a href="download02?action=deleteCookies" class="noselect del-cookies-btn">
                <span class="text-btn">Delete Cookies</span>
                <span class="icon-del-cookies">
                        <svg class="svg-btn" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z"></path>
                        </svg>
                    </span>
            </a>
        </div>
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
</body>