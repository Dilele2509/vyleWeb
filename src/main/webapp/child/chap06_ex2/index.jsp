<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 2</title>

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
<div class="contain-surveyPage">
    <div class="row display-flex contain-inputPage">
        <button class="Btn">

            <div class="sign"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>

            <a href="../../index.html" class="text">Home</a>
        </button>
        <div class="info-form">
            <form action="/survey62" method="post">
                <img src="../../assets/images/dancer.jpg" class="survey-img" alt="img">
                <h2>SURVEY</h2>
                <p class="describe-survey">If you have a moment, we'd appreciate it if you would fill out this survey.</p>

                <div class="input-box">
                    <p>Enter Your Information:</p>
                    <input type="hidden" name="action" value="add">
                    <input class="info-input" placeholder="First Name" type="text" name="firstName" required><br>
                    <input class="info-input" placeholder="Last Name" type="text" name="lastName" required><br>
                    <input class="info-input" placeholder="Email" type="email" name="email" required><br>
                    <input class="info-input" type="date" name="dob" required><br>
                </div>

                <div class="input-radio">
                    <p>How did you hear about us?</p>
                    <div class="radio-container">
                        <div class="radio-item">
                            <input type="radio" class="radio-btn" id="radio1" name="headForm" value="Search Engine" checked>
                            <label class="radio-label" for="radio1">
                                <span class="radio-custom"></span>
                                Search Engine
                            </label>
                        </div>

                        <div class="radio-item">
                            <input type="radio" class="radio-btn" id="radio2" name="headForm" value="Word of Mouth" checked>
                            <label class="radio-label" for="radio2">
                                <span class="radio-custom"></span>
                                Word of Mouth
                            </label>
                        </div>

                        <div class="radio-item">
                            <input type="radio" class="radio-btn" id="radio3" name="headForm" value="Social Media" checked>
                            <label class="radio-label" for="radio3">
                                <span class="radio-custom"></span>
                                Social Media
                            </label>
                        </div>

                        <div class="radio-item">
                            <input type="radio" class="radio-btn" id="radio4" name="headForm" value="Other" checked>
                            <label class="radio-label" for="radio4">
                                <span class="radio-custom"></span>
                                Other
                            </label>
                        </div>
                    </div>
                </div>

                <div class="input-checkBox">
                    <p>Would you like to receive announcements about new CDs and special offers?</p>
                    <div class="check-box-label">
                        <input type="checkbox" name="wantReceive">Yes, I'd like that
                    </div>
                </div>

                <div class="input-select">
                    <p>Please contact me by:</p>
                    <select name="contactMethod" id="contaceMethod">
                        <option value="null">Email or Postal Mail</option>
                        <option value="email">Email</option>
                        <option value="postal">Postal Mail</option>
                    </select>
                </div>
                <p class="notify">
                    <i></i>
                </p>
                <input type="submit" name="submit" id="submit" class="submit-btn">
            </form>
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
                <div class="change-page-btn checked-btn">
                    <span class="span">2</span>
                </div>
            </div>
            <div class="option">
                <input value="option3" name="btn" type="radio" class="change-page">
                <div class="change-page-btn">
                    <span class="span">3</span>
                </div>
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