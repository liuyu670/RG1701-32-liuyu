<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/7
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>学生信息管理系统SH</title>
</head>
<body>
当前登录用户：<s:property value="#session.adminUsername"/>
<h2>查看学生信息</h2>
<form action="findByName" method="post">
    根据姓名查询：<input type="text" name="stu.name">
    <input type="submit" value="查询">
    <a href="student_add.jsp"><input type="button" value="添加学生信息"></a>
</form>
<s:form action="findByDept" method="post">
    根据学院查询：<input type="text" name="stu.department">
    <input type="submit" value="查询">
    <%--<s:select name="stu.department" label="选择学院" headerValue="---请选择---" headerKey="" list=""></s:select>--%>
    <%--<s:submit value="查询"></s:submit>--%>
</s:form>

<h2>查询学生成绩</h2>
<s:form action="findScoreByName" method="POST">
    请输入学生姓名：<input type="text" name="course.name" />
    <input type="submit" value="查询"/>
</s:form>
<s:form action="findScoreByCourse" method="POST">
    请输入课程名：<input type="text" name="course.clasname" />
    <input type="submit" value="查询"/>
</s:form>
<table border="1px" style="" >
    <tr>
        <td width="50px">序号</td>
        <td width="100px">学号</td>
        <td width="100px">姓名</td>
        <td width="100px">性别</td>
        <td width="150px">生日</td>
        <td width="100px">大学</td>
        <td width="100px">院系</td>
        <td width="100px">专业</td>
        <td width="100px">年级</td>
        <td width="50px">修改</td>
        <td width="50px">删除</td>
    </tr>

    <s:iterator value="stuList" status="st">
        <tr>
            <td><s:property value="#st.count"/></td>
            <td><s:property value="studentID"/></td>
            <td><s:property value="name"/></td>
            <td><s:property value="sex"/></td>
            <td><s:property value="birthday"/></td>
            <td><s:property value="university"/></td>
            <td><s:property value="department"/></td>
            <td><s:property value="major"/></td>
            <td><s:property value="grade"/></td>
            <td><a href="student_update.jsp?studentID=<s:property value="studentID"/>">修改</a></td>
            <td><a href="delete?stu.studentID=<s:property value="studentID" />">删除</a></td>
        </tr>
    </s:iterator>

</table>
<%--<center>
    总共有${allPage}页,   当前是第${offset}页
    <a href="income!paging?page=0"><font size="2" color="blue">首页</font></a>
    <a href="javascript:if(${offset}>1)location='income!paging?page=${page-1}'"><font size="2" color="red">上一页</font></a>
    <a href="javascript:if(${offset}<${allPage})location='income!paging?page=${page+1}'"><font size="2" color="red">下一页</font></a>
    <a href="income!paging?page=${allPage-1}"><font size="2" color="blue">末页</font></a>
</center>
--%>
</body>
</html>
