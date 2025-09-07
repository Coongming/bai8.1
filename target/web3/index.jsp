<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="https://jakarta.ee/taglibs/standard-3.0" %> <%-- cần nếu dùng c:if --%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<%-- (Tuỳ chọn) include compile-time phần header --%>
<%-- <%@ include file="includes/header.html" %> --%>

<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add"/>

    <label>Email:</label>
    <input type="email" name="email" value="${user.email}" required/><br/>

    <label>First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}" required/><br/>

    <label>Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}" required/><br/>

    <label>&nbsp;</label>
    <input type="submit" value="Join Now" id="submit"/>
</form>

<%-- (Tuỳ chọn) hiển thị lại dữ liệu khi đã có user trong request --%>
<c:if test="${not empty user}">
    <hr/>
    <p><strong>Last submitted:</strong>
        ${user.firstName} ${user.lastName} &lt;${user.email}&gt;</p>
</c:if>

<%@ include file="includes/footer.jsp" %>
</body>
</html>
