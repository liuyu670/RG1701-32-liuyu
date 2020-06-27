<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/14 0014
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>学生信息管理系统SH</title>
</head>
<body>
<%--当前登录用户：<s:property value="#session.adminUsername" />--%>
当前登录用户：<s:property value="#session.name" />
<s:debug />

<h2>查看<s:property value="#session.name" />的成绩</h2>

    <table border="1px">
        <tr>
            <td width="50px">序号</td>
            <td width="150px">课程</td>
            <td width="100px">成绩</td>
        </tr>
        <s:iterator value="courseList" status="cour">
        <tr>
            <td><s:property value="#cour.count" /></td>
            <td><s:property value="clasname" /></td>
            <td><s:property value="score" /></td>
        </tr>
    </s:iterator>
    </table>
</body>
</html>
