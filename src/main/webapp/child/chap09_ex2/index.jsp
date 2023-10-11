<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 4</title>

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
    <button class="Btn">

        <div class="sign"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>

        <a href="index.html" class="text">Home</a>
    </button>
    <div class="list-container">
        <div class="list-row list-title">
            <div>
                <h4>List of Albums:</h4>
                <h1>Download Music</h1>
            </div>
        </div>
        <div class="list-row list-items">
            <div class="song-item col-2 aos-init aos-animate">
                <div class="cart-custom">
                    <div class="cart-custom-content">
                        <h5>86 (the band) - True Life Songs and Pictures</h5>
                        <h6>$14.95</h6>
                        <form action = "/cart92" method = "post">
                            <input type="hidden" name="productCode" value="8601">
                            <button class="cart-btn">
                                <a href="#" class="add-cart-btn"><span>
                                        Add To Cart
                                    </span></a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="song-item col-2 aos-init aos-animate">
                <div class="cart-custom">
                    <div class="cart-custom-content">
                        <h5>Paddlefoot - The First CD</h5>
                        <h6>$12.95</h6>
                        <form action = "/cart92" method = "post">
                            <input type="hidden" name="productCode" value="pf01">
                            <button class="cart-btn">
                                <a href="#" class="add-cart-btn"><span>
                                        Add To Cart
                                    </span></a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="song-item col-2 aos-init aos-animate">
                <div class="cart-custom">
                    <div class="cart-custom-content">
                        <h5>Paddlefoot - The Second CD</h5>
                        <h6>$14.95</h6>
                        <form action = "/cart92" method = "post">
                            <input type="hidden" name="productCode" value="pf02">
                            <button class="cart-btn">
                                <a href="#" class="add-cart-btn"><span>
                                        Add To Cart
                                    </span></a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="song-item col-2 aos-init aos-animate">
                <div class="cart-custom">
                    <div class="cart-custom-content">
                        <h5>Joe Rut - Genuine Wood Grained Finish</h5>
                        <h6>$14.95</h6>
                        <form action = "/cart92" method = "post">
                            <input type="hidden" name="productCode" value="jr01">
                            <button class="cart-btn">
                                <a href="#" class="add-cart-btn"><span>
                                        Add To Cart
                                    </span></a>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="moving-btn">
        <div class="option">
            <input checked="" value="option1" name="btn" type="radio" class="change-page">
            <div class="change-page-btn">
                <span class="span">1</span>
            </div>
        </div>
        <div class="option">
            <input value="option2" name="btn" type="radio" class="change-page">
            <div class="change-page-btn">
                <span class="span">2</span>
            </div>
        </div>
        <div class="option">
            <input value="option3" name="btn" type="radio" class="change-page">
            <div class="change-page-btn">
                <span class="span">3</span>
            </div>
        </div>
        <div class="option">
            <input value="option4" name="btn" type="radio" class="change-page">
            <div class="change-page-btn checked-btn">
                <span class="span">4</span>
            </div>
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
<script src="../../assets/js/changePage.js"></script>
</body>
</html>