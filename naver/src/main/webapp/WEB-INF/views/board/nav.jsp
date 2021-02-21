<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/modern-business.css" rel="stylesheet">
  <link href="/resources/css/login-modal.css" rel="stylesheet">
  
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout";
		})

		$(".regi").on("click", function(){	
				location.href = "/member/register";				    
		})

		
	})
</script>

	
  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/">Movie World</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
          <!-- 
           <a class="nav-link" href="contact.html">영화정보</a>
           -->  
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="/board/list">자유게시판</a>
        </ul>
			<c:if test="${member != null }">	
		       <div class="logoutbutton">
			        <button type="button" class="login-button" name="logoutBtn" id="logoutBtn" style="width:auto;">로그아웃</button>
		       </div>
		    </c:if>
        <div class="logbutton">     
			<c:if test="${member == null }">
				<div>
		        <button type="button" class="login-button" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">로그인</button>
		        </div>	
			</c:if>
			<c:if test="${member != null }">			
        		        <div class="updateButton">
			        <button type="button" class="login-button" name="updateBtn" id="updateBtn" style="width:auto; white-space:nowrap;" onclick="document.getElementById('id02').style.display='block'" 
			        >회원정보수정</button>
		        </div>
			</c:if>
    	</div>
    	
  </nav>
  
 <!-- LoginButton Modal -->
  <div id="id01" class="modal">
    <form class="modal-content animate" name='homeForm' method="post" action="/member/login">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>
  
      <div class="container">
        <label for="userid"><b>ID</b></label>
        <input type="text" placeholder="Enter Username" id="userId" name="userId" required>
  
        <label for="userPass"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" id="userPass" name="userPass" required>
          
        <button type="submit">로그인</button>
        <c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
				</c:if>

        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
        <a href="#">ID/PW 찾기</a>
      </div>
  
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
 
        <span class="psw">아직 회원이 아니신가요?<a class="regi">회원가입</a></span>
      </div>   
    </form>
  </div>
  
 <!-- UpdateButton Modal -->
   <div id="id02" class="modal">
    <form class="modal-content animate" name='homeForm' method="post" action="/member/memberUpdate">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal" >&times;</span>
      </div>
  
      <div class="container">
        <label for="userid"><b>아이디</b></label>
        <input type="text" placeholder="Enter Username" id="userId" name="userId" value="${member.userId}" readonly="readonly" required>
  
        <label for="userPass"><b>비밀번호</b></label>
        <input type="password" placeholder="Enter Password" id="userPass" name="userPass" required>
          
        <label for="userName"><b>닉네임</b></label>
        <input type="text" placeholder="Enter UserName" id="userName" name="userName" value="${member.userName}" required>  
          
        <button type="submit">확인</button>

      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      </div>  
    </form>
  </div>
  