<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function idCheck(){
		$.ajax({
			url: "memberList.do",
			type: "post",
			dataType: "json",
			success: function(data){
				console.log(data);
				var tb = $("<table border='1' />");
				var row = $("<tr/>").append(
						$("<th />").text("아이디"),	
						$("<th />").text("이름"),	
						$("<th />").text("주소"),	
						$("<th />").text("전화번호"),	
						$("<th />").text("권한")	
					);
				tb.append(row);
				
				for(var i in data){
					var id = data[i].id;
					var name = data[i].name;
					var address = data[i].address;
					var tel = data[i].tel;
					var author = data[i].author;
					
					var row = $("<tr/>").append(
						$("<td />").text(id),	
						$("<td />").text(name),	
						$("<td />").text(address),	
						$("<td />").text(tel),	
						$("<td />").text(author)	
					);
					tb.append(row);
				}
				$("#wrap").append(tb);
			}
		});
		
		
	}
</script>
<style>
	html{
		background-color: wheat;
	}
	p{
		font-size: 25px;
	}
	h1{
		color: orange;
	}
</style>
</head>
<body>
	<div align="center">
		<div>
			<p>🍁</p>			
			<h1> WELCOME</h1>
		</div>
		<h3><a href="test.do">타일즈테스트</a></h3>
		<button type="button" onclick="idCheck()">멤버목록</button>
      <div><h1>멤버목록</h1></div>
      <div id="wrap">
      </div>
	</div>
</body>
</html>