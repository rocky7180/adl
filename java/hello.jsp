<!DOCTYPE html>
<html>
<head>
    <title>Hello Page</title>
</head>
<body>
    <p>Current Time: <%= request.getSession().getAttribute("startTime") %></p>
</body>
</html>
