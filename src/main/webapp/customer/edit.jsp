<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/10/21
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .message {
            color: green;
        }
    </style>
    <title>Edit Customer</title>
</head>
<body>
<h1>Edit Customer</h1>
<p>
    <c:if test='${requestScope["message"]} != null'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Back To Customer List</a>
</p>
<form method="post">
    <table>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" value="${requestScope["customer"].getName()}"></td>
        </tr>
        <tr>
            <td>Username: </td>
            <td><input type="text" name="userName" value="${requestScope["customer"].getUserName()}"></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input type="text" name="email" value="${requestScope["customer"].getEmail()}"></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><input type="text" name="address" value="${requestScope["customer"].getAddress()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
</body>
</html>
