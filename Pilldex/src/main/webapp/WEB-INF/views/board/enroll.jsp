<%@page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
	<center>
		<h1>�α���</h1>
		<hr>
		<form action="login.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">���̵�</td>
					<td><input type="text" name="id" id="id"  value="${user.id}"/></td>
				</tr>
				<tr>
					<td bgcolor="orange">��й�ȣ</td>
					<td><input type="password" name="pw" id="pw" value="${user.pw}"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="�α���" /></td>
				</tr>
			</table>			
            <h1>
            <c:set var="userNo" value="${userVO.no}"/>
            <c:if test = "${userNo eq -1}">
                                        ȸ�� ������ �����ϴ�.   
            </c:if>        
            </h1>
		</form>
		<hr>
	</center>
</body>
</html>