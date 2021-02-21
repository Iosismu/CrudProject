<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
        <script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js charset="utf-8"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	 	
	 	
	 	<link href="/resources/css/style3.css" rel="stylesheet">
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".bottom-text").on("click", function(){
				location.href = "/";		    
			})
			
		    $(".logbtn2").on("click", function(){		
				location.href = "/";				    
			})
		
			$(".logbtn").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				if(($("#userId").val()!="" && $("#userPass").val()!="") && $("#userName").val()!="")  {
					location.href = "/";
				}
			});		
		})
	</script>
	<body>
		
		<section class="container">
            <form action="/member/register" method="post">
                <p>기본정보입력</p>
                <div id="notice">
                    회원가입을 위해서 이메일 인증이 진행되며, 인증이 완료되기 전까지 회원가입이 완료가 되지 않습니다.
                </div>
                <div class="txtb">
                    <input type="text" name = "userId" id="userId">
                    <span data-placeholder="아이디"></span>
                </div>

                <div class="txtb">
                    <input type="Password" name = "userPass" id="userPass">
                    <span data-placeholder="비밀번호"></span>
                </div>
                <div class="txtb">
                    <input type="NickName" name = "userName" id="userName">
                    <span data-placeholder="이름"></span>
                </div>
                <input type="submit" class="logbtn" value="가입하기">

                <input type="button" class="logbtn2" value="취소">
            
                <div class="bottom-text">
                    이미 회원이신가요? <a href="/">로그인</a>
                </div>
            </form>
        </section>
		

		<script type="text/javascript">
        $(".txtb input").on("focus",function(){
            $(this).addClass("focus");
        });
        $(".txtb input").on("blur",function(){
            if($(this).val() == "")
            $(this).removeClass("focus");
        });
        </script>


	</body>
	
</html>
