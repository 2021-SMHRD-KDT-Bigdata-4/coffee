<%@page import="model.wonduVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.annotations.JsonAdapter"%>
<%@page import="model.UserVO"%>
<%@page import="model.DAOMybatis"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	    

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script language = "javascript"/>
<script type = "text/javascript">


//out.print(data);
	
</script>
<body>
	
	${sessionScope.wonduInfo}(��) ��õ�Ǿ����ϴ� ??
     
      <%-- <h1></h1><c:if test="${sessionScope.userVO!=null }">
      ${sessionScope.userVO.password}������
      </c:if></h1> --%>
   
</body>
</html>