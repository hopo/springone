<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>직원 리스트</title>
</head>

<body>
	<table class="table">
		<thead>
			<tr>
				<th>아이디</th>	<!-- empId -->
				<th>이름</th>	<!-- empName -->
				<th>전화번호</th>	<!-- empPhone -->
				<th>주민번호</th>	<!-- empRrnum -->
				<th>주소</th>	<!-- empAddress -->
				<th>직책</th>	<!-- empDiv -->
				<th>연봉</th>	<!--empSalary -->
				<th>입사일</th>	<!-- empHiredate -->
				<th>퇴사일</th>	<!-- empRetiredate -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${result}">
 				<c:url value="employeeView" var="employeeViewUrl"> <!-- ;이곳 페이지 기준인가? -->
					<c:param name="empId" value="${item.empId}" />
					<%-- <c:param name="curPage" value="${search.curPage}" /> --%>
				</c:url>
				<tr>
					<td><a href="<c:url value='${employeeViewUrl}'/>">${item.empId}</a></td>
					<td>${item.empName}</td>
					<td>${item.empPhone}</td>
					<td>${item.empRrnum}</td>
					<td>${item.empAddress}</td>
					<td>
						<c:if test="${item.empDiv eq 'D'}">의사</c:if>
						<c:if test="${item.empDiv eq 'N'}">간호사</c:if>
						<c:if test="${item.empDiv eq 'A'}">*미분류</c:if>
					</td>
					<td>${item.empSalary}</td>
					<td>${item.empHiredate}</td>
					<td>${item.empRetiredate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
