<%--
  Created by IntelliJ IDEA.
  User: pc-student
  Date: 2019/6/5
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加管理账号</title>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <script>
        // 判断是登录账号和密码是否为空
        function check(){
            var username = $("#username").val();
            var password = $("#password").val();
            if(username=="" || password==""){
                $("#message").text("账号或密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
    <style>
    </style>
    <%
        Object message = request.getAttribute("msg2");
        if(message =="账号已注册"){
    %>
    <script type="text/javascript">
        alert("<%=message%>");
    </script>
    <%} %>
    <style>
        .add{
            text-decoration: none;
            margin-left: 242px;
            font-size: 15px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="login_box">
    <div class="login_l_img"><img src="images/login-img.png" /></div>
    <div class="login">
        <div class="login_logo"><a href="#"><img src="images/login_logo.png" /></a></div>
        <div class="login_name">
            <p>学生管理系统</p>
        </div>
        <form method="post" action="${pageContext.request.contextPath }/add.action">
            <input name="username" type="text"  value="用户名" onfocus="this.value=''" onblur="if(this.value==''){this.value='用户名'}">
            <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
            <input name="password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
            <input value="注册" style="width:100%;" type="submit" onclick="check() ">
            <p class="add"><a href="${pageContext.request.contextPath}/login.action">返回登录</a></p>
            <font color="red">
                <%-- 提示信息--%>
                <span id="message">${msg}</span>
            </font>
        </form>
    </div>
    <div class="copyright">学生管理系统 版权所有©2019-2019 技术支持QQ：1145180852</div>
</div>
</body>
</html>
