<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>게시판</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<script>
	function cancel(){
		location.href = "<c:url value='/list.do'/>";
	}
	</script>
</head>
<body>
	<div class="container">
		<h1>
			등록화면
		</h1>
		<div class="panel panel-default">
		  	<div class="panel-heading">
			    <label for="">안녕하세요. 게시물 등록 화면입니다.</label>
			</div>
		  	<div class="panel-body">
				<form class="form-horizontal" method="post" action="">
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="idx">게시물아이디:</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="idx" name="idx" placeholder="자동발본">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="title">제목:</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요." maxlength="100">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="writer">등록자/등록일:</label>
				    <div class="col-sm-10">
				    <div class="form-inline">
				      <input type="text" class="form-control" id="writer" name="writer" placeholder="등록자를 입력하세요." maxlength="15">
				      <input type="text" class="form-control" id="indate" name="indate" placeholder="등록일을 입력하세요." maxlength="10">
				    </div>
				  </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-2" for="title">내용:</label>
				    <div class="col-sm-10">
				    	<textarea class="form-control" rows="5" id="content" name="content" placeholder="내용을 입력하세요." maxlength="400"></textarea>
				    </div>
				  </div>
				</form>
			</div>
		  	<div class="panel-footer">
		  		<button type="button" class="btn btn-default">저장</button>
		  		<button type="button" class="btn btn-default" onclick="cancel();">취소</button>
			</div>
		</div>
	</div>
</body>
</html>