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

<h1>基于Struts2和Hibernate的学生信息管理系统</h1>
<h3>学生登录</h3>
<s:form action="stuLogin" method="post">
<table>
    <tr>

        <td><s:textfield name="name" label="username" size="16"></s:textfield></td>
    </tr>
    <tr>

        <td><s:password name="password" label="password" size="16"></s:password> </td>
    </tr>
    <tr>
        <td><s:submit value="登录" /></td>
    </tr>
</table>
</s:form>
</html>
