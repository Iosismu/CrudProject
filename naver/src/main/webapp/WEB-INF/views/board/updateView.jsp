<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "/board/readView?bno=${update.bno}"
					   + "&page=${scri.page}"
					   + "&perPageNum=${scri.perPageNum}"
					   + "&searchType=${scri.searchType}"
					   + "&keyword=${scri.keyword}";
			})
			
			$(".update_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "/board/update");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
			
		function fn_valiChk(){
			var updateForm = $("form[name='updateForm'] .chk").length;
			for(var i = 0; i<updateForm; i++){
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
    <form name="updateForm" role="form" method="post" action="/board/update">
      <input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
      <table>
        <tbody>
          <tr>
            <td>
              <label for="title">제목</label><input type="text" id="title" name="title" value="${update.title}" class="chk" title="제목을 입력하세요."/>
            </td>
          </tr>	
          <tr>
            <td>
              <label for="content">내용</label><hr>
              <textarea id="content" name="content" class="chk" title="내용을 입력하세요." cols="100" rows="20"><c:out value="${update.content}" /></textarea>
            </td>
          </tr>
          <tr>
            <td>
              <label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
            </td>
          </tr>
          <tr>
            <td>
              <label for="regdate">작성날짜</label>
              <fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd"/>					
            </td>
          </tr>		
        </tbody>			
      </table>
      <div>
        <button type="submit" class="replyUpdateBtn btn btn-warning">저장</button>
        <button type="submit" class="replyDeleteBtn btn btn-danger" id="cancel_btn">취소</button>
      </div>
    </form>
  </section>
  <hr />
</div>

</div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
