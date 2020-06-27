<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/6 0006
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>学生信息管理系统SH</title>
</head>
<body>
<h4>注册</h4>
<form name="myform" action="register" method="post">
    <table>
        <tr>
            <td>学号：</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><input type="radio" name="user.sex" value="女" checked="checked">女
                <input type="radio" name="user.sex" value="男" >男
            </td>
        </tr>
        <tr>
            <td>生日：</td>
            <td><input type="date"></td>
        </tr>
        <tr>
            <td>学校：</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>公寓：</td>
            <td><input></td>
        </tr>
        <tr>
            <td>专业：</td>
            <td></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td></td>
        </tr>

    </table>
</form>
</body>
</html>
