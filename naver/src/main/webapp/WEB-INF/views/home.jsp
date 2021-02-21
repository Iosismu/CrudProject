<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Modern Business - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
  <link href="resources/css/login-modal.css" rel="stylesheet">

</head>

<body>

<div>
 <%@include file="board/nav.jsp" %>
</div>

  <!-- Page Content -->
  <div class="container">
	   <c:if test="${member != null }">	
		  <h1>${member.userName}님 환영 합니다. CRUD게시판 프로젝트입니다. 상단 메뉴로 들어가주세요.</h1>
	  </c:if>
   		<c:if test="${member == null }">
   		<h1> CRUD게시판 프로젝트입니다. 상단 메뉴로 들어가기전 로그인 또는 회원가입을 진행해 주세요.</h1>
   		</c:if>
   </div>

   
  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Modal Script -->
  <script>
    // Get the modal
    var modal = document.getElementById('id01');
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script>

</body>

</html>
