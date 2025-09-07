<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Thanks</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>
<p><span class="bold-label">Email:</span> ${requestScope.user.email}</p>
<p><span class="bold-label">First Name:</span> ${requestScope.user.firstName}</p>
<p><span class="bold-label">Last Name:</span> ${requestScope.user.lastName}</p>

<p><span class="bold-label">Current Date:</span> ${requestScope.currentDate}</p>

<p>Emails of Two Users have joined: ${sessionScope.users[0].email}, ${sessionScope.users[1].email}</p>

<p>The email of the customer service is</p>
<p>${initParam.custServEmail}</p>

<p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>

<form action="index.jsp" method="get">
    <input type="submit" value="Back" id="submit">
</form>
</body>
</html>