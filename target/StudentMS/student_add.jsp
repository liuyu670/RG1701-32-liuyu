<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7 0007
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息管理系统SH</title>
</head>
<body>
当前登录用户：<s:property value="#session.adminUsername" />
<s:debug />
<h2>插入学生信息</h2>

<form action="insert" method="post">

        <table>
            <tr>
                <td><s:textfield name="stu.studentID" label="学号" size="16"></s:textfield></td>
            </tr>
            <tr>

                <td><s:textfield name="stu.name" label="姓名" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.sex" label="性别" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.birthday" label="生日" size="16"/></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.university" label="学校" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.department" label="学院" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.major" label="专业" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:textfield name="stu.grade" label="年级" size="16"></s:textfield></td>
            </tr>
            <tr>
                <td><s:submit value="提交" /></td>
            </tr>
        </table>
</form>
</body>
</html>
