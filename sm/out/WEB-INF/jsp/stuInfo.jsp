<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>学生管理-StudentCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>student/list.action">学生管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>王老师</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>考试成绩出来了，大家考的都不错...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">10分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">44分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">5分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">2分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.username}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/upp.action">
						<i class="fa fa-edit fa-fw"></i>修改密码
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/student/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 学生成绩管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/stuInfo/list.action" class="active">
				      <i class="fa fa-dashboard fa-fw" ></i> 学生学籍管理
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">学籍管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="post"
				      action="${pageContext.request.contextPath }/stuInfo/list.action">
					<div class="form-group">
						<label for="sno">学号</label>
						<input type="text" class="form-control" id="sno"
						                   value="${sno}" name="sno" />
					</div>&nbsp;&nbsp;
					<div class="form-group">
						<label for="sname">姓名</label>
							<input type="text" class="form-control" id="sname"
								   value="${sname}" name="sname" />
					</div>&nbsp;&nbsp;
					<div class="form-group">
						<label for="idcard">身份证号</label>
						<input type="text" class="form-control" id="idcard" value="${idcard}" name="idcard" />
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearStuInfo()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">学生学籍信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
                                <th>序号</th>
								<th>学号</th>
								<th>姓名</th>
								<th>性别</th>
								<th>年级</th>
								<th>学历</th>
								<th>学习类别</th>
								<th>专业</th>
								<th>系别</th>
								<th>班级</th>
								<th style="margin-left: 5px">身份证号</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
                                    <th>${row.id}</th>
									<td>${row.sno}</td>
									<td>${row.sname}</td>
									<td>${row.sex}</td>
									<td>${row.grade}</td>
									<td>${row.qualification}</td>
									<td>${row.sort}</td>
								    <td>${row.profession}</td>
									<td>${row.depart}</td>
									<td>${row.classs}</td>
									<td>${row.idcard}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editStuInfo(${row.id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteStuInfo(${row.id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/stuInfo/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!--学生列表查询部分  end-->
</div>
<!-- 创建学生模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建学生学籍信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_student_form">
					<div class="form-group">
						<label for="new_sno" class="col-sm-2 control-label">
						    学号
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_sno" placeholder="学生学号" name="sno" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_sname" class="col-sm-2 control-label">
							姓名
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_sname" placeholder="学生姓名" name="sname" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_sex" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_sex" placeholder="学生性别" name="sex" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_grade" class="col-sm-2 control-label">入学年级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_grade" placeholder="学生年级" name="grade" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_qualification" class="col-sm-2 control-label">学历</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_qualification" placeholder="学历" name="qualification" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_sort" class="col-sm-2 control-label">学生类别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_sort" placeholder="学生类别" name="sort" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_profession" class="col-sm-2 control-label">专业</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_profession" placeholder="专业" name="profession" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_depart" class="col-sm-2 control-label">系别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_depart" placeholder="系别" name="depart" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_classs" class="col-sm-2 control-label">班级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_classs" placeholder="班级" name="classs" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_idcard" class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_idcard" placeholder="身份证号" name="idcard" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createStuInfo()">创建学籍</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改学生模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改学生学籍信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_student_form">
					<div class="form-group">
						<label for="edit_sno" class="col-sm-2 control-label">
							学号
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_sno" placeholder="学生学号" name="sno" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_sname" class="col-sm-2 control-label">
							姓名
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_sname" placeholder="学生姓名" name="sname" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_sex" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_sex" placeholder="学生性别" name="sex" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_grade" class="col-sm-2 control-label">入学年级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_grade" placeholder="学生年级" name="grade" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_qualification" class="col-sm-2 control-label">学历</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_qualification" placeholder="学历" name="qualification" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_sort" class="col-sm-2 control-label">学生类别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_sort" placeholder="学生类别" name="sort" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_profession" class="col-sm-2 control-label">专业</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_profession" placeholder="专业" name="profession" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_depart" class="col-sm-2 control-label">系别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_depart" placeholder="系别" name="depart" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_classs" class="col-sm-2 control-label">班级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_classs" placeholder="班级" name="classs" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_idcard" class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_idcard" placeholder="身份证号" name="idcard" />
						</div>
					</div>
					<div class="form-group" hidden="hidden">
						<label for="edit_id" class="col-sm-2 control-label">序号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_id" placeholder="序号" name="id" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateStuInfo()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建学生窗口中的数据
	function clearStuInfo() {
	    $("#new_sno").val("");
	    $("#new_sname").val("");
        $("#new_sex").val("")
	    $("#new_grade").val("");
        $("#new_qualification").val("")
	    $("#new_sort").val("");
	    $("#new_profession").val("");
	    $("#new_depart").val("");
	    $("#new_classs").val("");
	    $("#new_idcard").val("");
	}
	// 创建学生
	function createStuInfo() {
	$.post("<%=basePath%>stuInfo/create.action",
	$("#new_student_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("学生创建成功！");
	            window.location.reload();
	        }else{
	            alert("学生创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的学生信息
	function editStuInfo(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>stuInfo/getStudentById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_sno").val(data.sno);
	            $("#edit_sname").val(data.sname);
                $("#edit_sex").val(data.sex);
	            $("#edit_grade").val(data.grade);
                $("#edit_qualification").val(data.qualification);
	            $("#edit_sort").val(data.sort);
	            $("#edit_profession").val(data.profession);
	            $("#edit_depart").val(data.depart);
	            $("#edit_classs").val(data.classs);
	            $("#edit_idcard").val(data.idcard);
	            $("#edit_history").val(data.history);
	            $("#edit_id").val(data.id);
	        }
	    });
	}
    // 执行修改学生操作
	function updateStuInfo() {
		$.post("<%=basePath%>stuInfo/update.action",$("#edit_student_form").serialize(),function(data){
			if(data =="OK"){
				alert("学生信息更新成功！");
				window.location.reload();
			}else{
				alert("学生信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除学生
	function deleteStuInfo(id) {
	    if(confirm('确实要删除该学生吗?')) {
	$.post("<%=basePath%>stuInfo/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("学生删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除学生失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>