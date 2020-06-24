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
	$(document).ready(function(){
		
	});
	function add(){
  		<c:choose>
		    <c:when test="${!empty sessionScope.userId }">
				location.href = "<c:url value='/write.do'/>";
		    </c:when>
			<c:otherwise>
				alert("등록은 로그인후 가능합니다.");
			</c:otherwise>
  		</c:choose>
	}
	function view(){
		location.href = "<c:url value='/view.do'/>";
	}
	function check(){
		if(!$('#user_id').val()){
			alert('아이디를 입력하세요.');
			return false;
		}else if(!$('#password').val()){
			alert('비빌번호를 입력하세요.');
			return false;
		}
		return true;
	}
	function logout(){
		location.href = "<c:url value='/logout.do'/>";
	}
	</script>
</head>
<body>
	<div class="container">
		<h1>
			메인화면
		</h1>
		<div class="panel panel-default">
		  	<div class="panel-heading">
		  		<c:choose>
				  	<c:when test="${sessionScope == null || sessionScope.userId == null || sessionScope.userId == '' }">
					  	<form class="form-inline" method="post" action="<c:url value='/login.do'/>">
						  <div class="form-group">
						    <label for="user_id">아이디:</label>
						    <input type="text" class="form-control" id="user_id" name="user_id">
						  </div>
						  <div class="form-group">
						    <label for="password">비밀번호:</label>
						    <input type="password" class="form-control" id="password" name="password">
						  </div>
						  <button type="submit" class="btn btn-default" onclick="return check();">로그인</button>
						</form>
					</c:when>
					<c:otherwise>
					  ${sessionScope.userName}님 환영합니다.
					  <button type="button" class="btn btn-default" onclick="logout();">로그아웃</button>
					</c:otherwise>
				</c:choose>
			</div>
		  	<div class="panel-body">
			  	<form class="form-inline" action="/search.do">
				  <div class="form-group">
				    <label for="seachWord">제목(내용):</label>
				    <input type="text" class="form-control" id="searchWord">
				  </div>
				  <button type="submit" class="btn btn-default">검색</button>
				</form>
		  		<div class="table-responsive">
				  <table class="table table-hover">
				  	<thead>
				      <tr>
				        <th>번호</th>
				        <th>제목</th>
				        <th>조회수</th>
				        <th>작성자</th>
				        <th>작성일</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td>1</td>
				        <td><a href="javascript:view();">안녕하세요?</a></td>
				        <td>3</td>
				        <td>관리자</td>
				        <td>2020-06-09</td>
				      </tr>
				    </tbody>
				  </table>
				</div>
			</div>
		  	<div class="panel-footer">
		  		<button type="button" class="btn btn-default" onclick="add();">등록</button>
			</div>
		</div>
	</div>
</body>
</html>