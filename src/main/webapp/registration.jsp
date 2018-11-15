<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
            <form:form method="POST" modelAttribute="userForm" class="form-signin">
                
                <h2 class="form-signin-heading space-below">Account Application</h2>
        
                <spring:bind path="firstName">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="firstName" class="form-control" placeholder="First Name" autofocus="true"></form:input>
                        <form:errors path="firstName"></form:errors>
                    </div>
                </spring:bind>
        
                <spring:bind path="lastName">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="lastName" class="form-control" placeholder="Last Name"></form:input>
                        <form:errors path="lastName"></form:errors>
                    </div>
                </spring:bind>
        
                <spring:bind path="DOB">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="DOB" class="form-control" placeholder="Date of Birth"></form:input>
                        <form:errors path="DOB"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="phoneNumber">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="phoneNumber" class="form-control" placeholder="Phone Number"></form:input>
                        <form:errors path="phoneNumber"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="email">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="email" class="form-control" placeholder="Email Address"></form:input>
                        <form:errors path="email"></form:errors>
                    </div>
                </spring:bind>
                
                <spring:bind path="address">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="address" class="form-control" placeholder="Address"></form:input>
                        <form:errors path="address"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="desiredAccountType">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:select type="text" path="desiredAccountType" class="form-control">
                            <form:option value="Offering">Offering</form:option>
                            <form:option value="Savings">Savings</form:option>
                            <form:option value="Checking">Checking</form:option>
                            <form:option value="Money Market">Money Market</form:option>
                            <form:option value="CD">CD</form:option>
                            <form:option value="IRA CD">IRA CD</form:option>
                        </form:select>
                        <form:errors path="desiredAccountType"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="salary">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="salary" class="form-control" placeholder="Salary"></form:input>
                        <form:errors path="salary"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="username">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="text" path="username" class="form-control" placeholder="Username"></form:input>
                        <form:errors path="username"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                        <form:errors path="password"></form:errors>
                    </div>
                </spring:bind>

                <spring:bind path="passwordConfirm">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <form:input type="password" path="passwordConfirm" class="form-control"
                                    placeholder="Confirm your password"></form:input>
                        <form:errors path="passwordConfirm"></form:errors>
                    </div>
                </spring:bind>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Apply</button>
                
                <p>or</p>
        
                <button class="btn btn-sm btn-primary btn-block"><a href="${contextPath}/login">Log In</a></button>
            </form:form>
        
            
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