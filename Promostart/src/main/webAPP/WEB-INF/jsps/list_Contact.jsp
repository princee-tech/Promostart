<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
</head>
<body>

<h2>AllContacts
</h2>
<table>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Email</th>
<th>Mobile</th>
<th>Source</th>
<th>Billing</th>

</tr>
<c:forEach var="contact" items="${contacts}">
<tr>
<td><c:out value="${contact.firstName}"/></td>
<td><c:out value="${contact.lastName}"/></td>
<td><c:out value="${contact.email}"/></td>
<td><c:out value="${contact.mobile}"/></td>
<td><c:out value="${contact.source}"/></td>
<td><a href="generateBill?id=${ contact.id}">billing</a></td>
</c:forEach>
</table>
</body>
</html>