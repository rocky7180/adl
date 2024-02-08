<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Current Date and Time</title>
</head>
<body>
    <h2>Current Date and Time</h2>
    <p>Current Date and Time: <%= session.getAttribute("currentTime") %></p>
</body>
</html>