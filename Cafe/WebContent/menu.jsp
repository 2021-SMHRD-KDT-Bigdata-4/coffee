<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
	String num = request.getParameter("pageSelection");
	System.out.println(num);
%>
						
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="index.jsp"
		<%
			if(num.equals("1")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>카페</a>
</li>

<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="recommend.jsp"
		<%
			if(num.equals("2")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>원두추천</a>
</li>

<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="search.jsp"
		<%
			if(num.equals("3")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>원두정보</a>
</li>

<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="map.jsp"
		<%
			if(num.equals("4")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>커피맵</a>
</li>

						

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="about.jsp">About</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="products.jsp">Products</a></li>

					<li class="nav-item px-lg-4"><a
						class="nav-link text-uppercase" href="store.jsp">Store</a></li>
						
						
<c:if test="${sessionScope.userVO==null}">
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="login.jsp" onclick="mypageFn()"
		<%
			if(num.equals("9")){
		%>
	   		
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>마이페이지</a>
</li>
</c:if>			


<c:if test="${sessionScope.userVO!=null}">
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="mypage.jsp"
		<%
			if(num.equals("9")){
		%>
			
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>마이페이지</a>
</li>
</c:if>			

<c:if test="${sessionScope.userVO==null}">
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="login.jsp"
		<%
			if(num.equals("10")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>로그인</a>
</li>
</c:if>		
	
<c:if test="${sessionScope.userVO!=null}">
<li class="nav-item px-lg-4">
	<a class="nav-link text-uppercase" href="index.jsp"
	   onclick="logoutFn()"
		<%
			if(num.equals("10")){
		%>
			style="background-color:#e6a756; border-radius: 80px / 40px;"
		<% } %>
	>${sessionScope.userVO.user_name}님 로그아웃</a>
</li>
</c:if>			
						
						
						
						