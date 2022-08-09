<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>부동산 파일 업로드</title>
	
	<style>
	
element.style {
}
.form-control[type=file]:not(:disabled):not([readonly]) {
    cursor: pointer;
}
.form-control[type=file] {
    overflow: hidden;
}
.form-control-lg {
    min-height: calc(1.5em + (1rem + 2px));
    padding: 0.5rem 1rem;
    font-size: 1.25rem;
    border-radius: 0.3rem;
}
.form-control {
	text-align: center;
	margin: auto;
    display: block;
    width: 500px;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
	</style>
	
</head>

<div width="500px"; style="text-align:center;">
<br>
<h2 style="font-weight: bold">🏡아파트 매매 실거래가 분석 프로그램🏡</h2>

<body>
	<div width="300px">
		  <label>분석하고자 하는 부동산 csv 파일을 업로드해주세요.</label><br>
		  <label>다운로드 받을 곳 : <a href="http://rtdown.molit.go.kr/">http://rtdown.molit.go.kr/</a></label><br>
		  <label style="font-size: 13px">(국토교통부 실거래가 공개시스템 사이트)</label>		  
		  <br><br>		  
		<form action="uploadCheck.jsp" name="fileForm" method="post" enctype="multipart/form-data">
		
		  <input type="file" name="uploadFile" class="form-control form-control-lg" id="formFileLg" type="file">
		  <br>
		  <input type="submit" value=" 분석 시작 ">		  
		</form>
	</div>
</body>
</div>

</html> 


