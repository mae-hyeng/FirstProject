<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   
    <title>Welcome to MyWorld</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	 <!-- jQuery -->
    <script src="/resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 2000 //changes the speed
    })
    </script>

</head>

<body>
	<!-- header -->
	<div class="brand">My Web</div>        
    <div class="address-bar">Welcome to MyWorld</div>
		
    
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <a class="navbar-brand" href="/hong">My First Web</a>
            </div>
           
           
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                	
                    <li>
                        
                        <a href="<%=request.getContextPath() %>/index.do">HOME</a>
                    </li>
                    <li>
                    	<a href="${pageContext.request.contextPath }/member.do">Member</a>
                        
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/board/list">BOARD</a>
                    </li>
                    <!-- 세션이 없다면 로그인과 조인 메뉴를 나타냄 -->
                    <c:choose>
                    	<c:when test="${sessionScope.user_id == null }">
		                    <li>
		                        <a href="${pageContext.request.contextPath }/user/user_login">LOGIN</a>
		                    </li>
		                    <li>
		                        <a href="${pageContext.request.contextPath }/user/user_join" style="color:red">JOIN</a>
		                    </li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li>
		                        <a href="${pageContext.request.contextPath }/user/user_logout">LOGOUT</a>
		                    </li>
		                    <li>
		                        <a href="${pageContext.request.contextPath }/user/user_mypage" style="color:red">MYPAGE</a>
		                    </li>
	                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            
            
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
 	<!-- end header -->
</body>
</html>