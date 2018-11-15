<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
    <body class="text-center">

    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
      <header class="masthead mb-auto">
        <div class="inner">
          <h3 class="masthead-brand">ABC Banking</h3>
          <nav class="nav nav-masthead justify-content-center space-below">
            <a class="nav-link active" href="#">Home</a>
            <a class="nav-link" href="#">Account Services</a>
            <a class="nav-link" href="#">About</a>
            <a class="nav-link" href="#">Contact</a>
          </nav>
        </div>
      </header>

      <main role="main" class="inner cover">
        <h1 class="cover-heading">Your account application has been denied</h1>
        <hr style="border-color:white">
        <p class="lead">Thank you for your interest in doing business with ABC. Your patronage is appreciated.</p>
        <p class="lead">Please reach out to us at <strong>(773) 987-6543</strong> if you have any questions regarding your application.</p>
        <p class="lead">
          <a href="#" class="btn btn-lg btn-secondary">Learn more</a>
        </p>    
        <button class="btn btn-md btn-secondary space-below"><a href="${contextPath}/login" class="white-button-link">Home</a></button>

        </main>

        <footer class="mastfoot mt-auto">
          <div class="inner">
            <p>Copyright, <a href="https://getbootstrap.com/">ABC Banking&copy;</a></p>
          </div>
        </footer>
      </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${contextPath}/resources/js/popper.min.js"></script>
    </body>
</html>