<%--
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/child/chap09_ex2/styles/main.css" type="text/css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/addition.css">
</head>
<body>

<h1>Your cart</h1>

<table>
  <tr>
    <th>Quantity</th>
    <th>Description</th>
    <th>Price</th>
    <th>Amount</th>
    <th></th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type=text name="quantity" 
               value="<c:out value='${item.quantity}'/>" id="quantity">
        <input type="submit" value="Update">
      </form>
    </td>
    <td><c:out value='${item.product.description}'/></td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove Item">
      </form>
    </td>
  </tr>
</c:forEach>
</table>

<p><b>To change the quantity</b>, enter the new quantity 
      and click on the Update button.</p>
  
<form action="" method="post">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Continue Shopping">
</form>

<form action="" method="post">
  <input type="hidden" name="action" value="checkout">
  <input type="submit" value="Checkout">
</form>

</body>
</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <%--<div id="preloader">
    <div id="status" class="la-ball-triangle-path">
      <div></div>
      <div></div>
      <div></div>
    </div>
  </div>--%>
  <!--End of Preloader-->
  <div class="row display-flex contain-inputPage">
    <button class="Btn">

      <div class="sign"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>

      <a href="../../index.html" class="text">Home</a>
    </button>
    <div class="shopping-cart">
      <!-- Title -->
      <div class="title-cart">
        Shopping Bag
      </div>

      <!-- Product #1 -->
      <c:forEach var="item" items="${cart.items}">
        <div class="cart-item">
          <div class="cart-buttons">
            <!-- delete button -->
            <form action="" method="post">
              <input type="hidden" name="productCode"
                     value="<c:out value='${item.product.code}'/>">
              <input type="hidden" name="quantity"
                     value="0">
              <button type="submit" class="del-product-btn">
                <i class="fa-solid fa-trash"></i>
              </button>
            </form>
          </div>

          <!-- product name -->
          <div class="pro-name-item">
            <h4><c:out value='${item.product.description}'/></h4>
          </div>

          <!-- update product quantity -->
          <div class="quantity">
            <form action="" method="post">
              <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
              <button class="minus-cart-btn" type="submit" name="button">
                <i class="fa-solid fa-minus"></i>
              </button>
              <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
              <button class="plus-cart-btn" type="submit" name="button">
                <i class="fa-solid fa-plus"></i>
              </button>
            </form>
          </div>

          <!-- product price -->
          <div class="product-price">${item.product.priceCurrencyFormat}</div>

          <!-- total price -->
          <div class="total-price">${item.totalCurrencyFormat}</div>
        </div>
      </c:forEach>
    </div>
    <div class="cart-nav-btn">
      <form action="?action=viewAlbums" method="post">
        <input type="hidden" name="action" value="join">
        <button class="return-btn" type="submit">Continue Shopping
        </button>
      </form>
      <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <button class="return-btn" type="submit">Checkout
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
  <script src="../../assets/js/cartPage.js"></script>
</body>
</html>