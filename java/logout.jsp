<!DOCTYPE html>
<html>
<head>
    <title>Goodbye Page</title>
</head>
<body>
    <h1>Thank You, <%= session.getAttribute("name") %>!</h1>
    <p>Duration of Usage: <%= request.getAttribute("duration") %> ms</p>
</body>
</html>