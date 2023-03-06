<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads</title>
</head>
<body>
<a href="viewCreateLeadPage">new lead</a>
<h2>All Leads
</h2>
<table>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Email</th>
<th>Mobile</th>
<th>Source</th>

</tr>
<c:forEach var="Lead" items="${leads}">
<tr>

<td><a href="leadInfo?id=${Lead.id }"><c:out value="${Lead.firstName}"/></a></td>
<td><c:out value="${Lead.lastName}"/></td>
<td><c:out value="${Lead.email}"/></td>
<td><c:out value="${Lead.mobile}"/></td>
<td><c:out value="${Lead.source}"/></td>

</c:forEach>
</table>
</body>
</html>