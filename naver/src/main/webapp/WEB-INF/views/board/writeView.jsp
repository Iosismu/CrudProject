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
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Bootstrap core CSS -->
  <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/css/modern-business.css" rel="stylesheet">
  <link href="/resources/css/login-modal.css" rel="stylesheet">

</head>

	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	
<body>

<div>
 <%@include file="nav.jsp" %>
</div>

<!-- Page Content -->
  <div class="container">
<div id="root">
  <header>
    <h1> 게시판</h1>
  </header>
  <hr />
   
  	<div>
  		<%@include file="textnav.jsp" %>
  	</div>
  <hr />
  
  <section id="container">
    <form name="writeForm" method="post" action="/board/write">
      <table>
        <tbody>
        <c:if test="${member.userId != null}">
          <tr>
            <td>
              <label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요."/>
            </td>
          </tr>	
          <tr>
            <td>
              <label for="content">내용</label><hr>
              <textarea id="content" name="content" class="chk" title="내용을 입력하세요." cols="100" rows="20"></textarea>
            </td>
          </tr>
          <tr>
            <td>
              <label for="writer">작성자</label><input type="text" id="writer" name="writer"readonly="readonly" value=${member.userName}>
            </td>
          <tr>
            <td>						
              <button type="submit" class="replyUpdateBtn btn btn-warning" id="write_btn">작성</button>
            </td>
          </tr>
          </c:if>
			
		<c:if test="${member.userId == null}">
			<p>로그인 후에 작성하실 수 있습니다.</p>
		</c:if>
		
        </tbody>			
      </table>
    </form>
  </section>
  <hr />
</div>
</div>



  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
