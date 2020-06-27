<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7 0007
  Time: 13:48
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
<h2>修改学生信息</h2>

<form action="update" method="post">
    <s:iterator value="#session.stuList.{?#this.studentID == #parameters.studentID[0]}" status="st">
        <table>
            <tr>
                <td>学号：</td>
                <td><input type="text" name="stu.studentID" value="<s:property value="studentID" /> "></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="stu.name" value="<s:property value="name" /> "></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input type="text" name="stu.sex" value="<s:property value="sex" /> ">
                </td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><input type="date" name="stu.birthday" value="<s:property value="birthday" />"></td>
            </tr>
            <tr>
                <td>学校：</td>
                <td><input type="text" name="stu.university" value="<s:property value="university" />"></td>
            </tr>
            <tr>
                <td>学院：</td>
                <td><input type="text" name="stu.department" value="<s:property value="department" />"></td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><input type="text" name="stu.major" value="<s:property value="major" />"></td>
            </tr>
            <tr>
                <td>年级：</td>
                <td><input type="text" name="stu.grade" value="<s:property value="grade" />"></td>
            </tr>
            <tr>
                <td><input type="submit" value="修改学生信息"></td>
            </tr>
        </table>
    </s:iterator>
</form>
</body>
</html>
