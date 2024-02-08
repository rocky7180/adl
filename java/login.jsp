<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<style>
    body{
      margin: 0;
      padding: 0;
      height: 100vh;
    }
  </style>
<%@ page import="java.sql.*" %>
<body>
  <%
    try {
      String username= request.getParameter("username");
      String password=request.getParameter("password");
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "root");
      Statement st=conn.createStatement();
      ResultSet r=st.executeQuery(String.format( "select * from credentials where username='%s' and password='%s' ",username,password));
      if (r.next()){
        %>
          <h2>Login Successful</h2>
        <%
      }
      else {
        %>
          <h2>Login Failed! Invalid Username or Password</h2>
        <%
      }
    }
    catch (Exception e){
        System.out.println(e.getMessage());
    }
  %>
</body>
</html>