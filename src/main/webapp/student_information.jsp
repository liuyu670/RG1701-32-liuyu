<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7 0007
  Time: 16:40
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
<h2><s:property value="#session.name" />的个人信息</h2>
<s:form action="findScoreByName" method="POST">
    <a href="student_name_score.jsp">查看成绩</a>
    请输入学生姓名：<input type="text" name="course.name" />
    <input type="submit" value="查询"/>
</s:form>
<!--<form action="updatePWD" method="post">-->
<form>

        <table>
            <tr>
                <td>学号：</td>
                <td><s:property value="stu.studentID" /></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><s:property value="stu.name" /></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><s:property value="stu.sex" /></td>
            </tr>
            <tr>
                <td>生日：</td>
                <td><s:property value="stu.birthday" /></td>
            </tr>
            <tr>
                <td>学校：</td>
                <td><s:property value="stu.university" /></td>
            </tr>
            <tr>
                <td>学院：</td>
                <td><s:property value="stu.department" /></td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><s:property value="stu.major" /></td>
            </tr>
            <tr>
                <td>年级：</td>
                <td><s:property value="stu.grade" /></td>
            </tr>
        </table>

    <a href="student_updatePwd.jsp">修改密码</a>

</form>

</body>
</html>
