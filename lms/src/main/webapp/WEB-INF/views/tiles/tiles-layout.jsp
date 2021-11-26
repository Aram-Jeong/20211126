<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> <tiles:getAsString name="title"/></title>
</head>
<body>
	<div align="center">
		<div>
			<table border="1">
				<tr>
					<td colspan="2"> <tiles:insertAttribute name="header"/>
				</tr>
				
				<tr>
					<td width="20%" height="400"> <tiles:insertAttribute name="side"/></td>
					<td width="80%"> <tiles:insertAttribute name="body"/></td>
				</tr>
				
				<tr>
					<td colspan="2"> <tiles:insertAttribute name="foot"/></td>
					
				</tr>
			</table>
		</div>
	</div>
</body>
</html>