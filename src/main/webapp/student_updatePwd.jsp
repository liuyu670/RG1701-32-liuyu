<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7 0007
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>学生信息管理系统SH</title>
</head>
<body>
当前登录用户：<s:property value="#session.name" />
<s:debug />
<h3>修改密码</h3>
<form action="updatePwd" method="post">
    <table>
    <tr>
        <td>学号：</td>
        <td><input type="text" name="stu.studentID"></td>
    </tr>
    <tr>
        <td>新的密码：</td>
        <td><input type="password" name="stu.password"/></td>
    </tr>
    <tr>
        <td><input type="submit" value="修改密码"></td>
    </tr>
    </table>
</form>
</body>
</html>
