<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/10/21
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Customer</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Create New Customer</h1>
<p>
    <c:if test='${requestScope["message"]} != null'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form method="post">
    <table>
        <tr>
            <td>Id: </td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Username: </td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Create customer"></td>
        </tr>
    </table>
</form>
</body>
</html>
