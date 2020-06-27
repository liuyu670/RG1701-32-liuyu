
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/6 0006
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>学校管理系统SH</title>
</head>
<body>

<h1><基于Struts2和Hibernate的学校>·</基于Struts2和Hibernate的学校>管理系统</h1>
<h3>管理员登录</h3>
<s:form action="adminLogin" method="post">
    <table>
        <tr>
            <td><s:textfield name="username" label="username" size="16"></s:textfield></td>
        </tr>
        <tr>

            <td><s:password name="password" label="password" size="16"></s:password> </td>
        </tr>
        <tr>
            <td><s:submit value="登录" /></td>
        </tr>
    </table>
    <a href="register.jsp">注册</a>
</s:form>
</body>
</html>