<html>
<head>
    <title>Email List</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1>Join our email list</h1>

<form action="emailList" method="post">
    <label>First name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>

    <label>Last name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>

    <label>Email:</label>
    <input type="email" name="email" value="${user.email}"><br>

    <input type="submit" value="Join">
</form>
</body>
</html>
