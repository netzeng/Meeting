<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="header.jsp" %>
</head>

<%
	String logout = (String)request.getParameter("logout");
	if(logout!=null && logout.equals("1")){
		session.removeAttribute("person");
	}
	
%>

<body class="home-template default-bg" onload="homeLoad();" >

    <nav class="navbar navbar-ghost navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display . span is for line in button.-->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#global-navbar">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	    </div>


	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="global-navbar">
	    	<ul class="nav navbar-nav">
		        <li><a href="#" onclick="showAlert();" >查看通知</a></li>
		        <li><a href="#" onclick="showAlert();" >预约会议室</a></li>
		        <li><a href="#" onclick="showAlert();" >我的会议</a></li>
		        <li><a href="#" onclick="showAlert();" >我的预订</a></li>
				<li><a href="#" onclick="showAlert();" >设备申请</a></li>
		        <li><a href="#login" data-toggle="modal" >不要点我</a></li>
			</ul>
			
	    </div>

	</div>
</nav>

<header id="logo" class="container">
	<div class="row">
		<div class="col-lg-8 col-lg-push-2">
		    
			    <h1 class="blog-title">
			    	<a href="/">会议管理系统</a>
			    </h1>
			    <h2 class="blog-desc">
			    	<a href="#">这TM就是一个会议管理系统，得有账号才能登陆！</a>
			    </h2>	
				<p>
					<a class="btn btn-lg btn-primary btn-shadow bs3-link btn-login" role="button" data-toggle="modal" href="#login" >爷有账号</a>
				</p>
				<p>
					<a class="btn btn-lg btn-primary btn-shadow bs3-link " role="button" data-toggle="modal" href="#register" >咦，我还没有账号</a>
				</p>
				<p>
					<a href="meetingManager.jsp?logout=1" ></a>
				</p>
		</div>
    </div>
</header>

 <!-- 登录对话框开始 -->
    <div id="login" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center">用户登录</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" method="post" action="LoginServlet">
                        <div class="form-group">
                            <label for="username" class="control-label col-md-2">用户名</label>
                            <div class="col-md-10">
                                <input type="text" id="username" name="username" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-md-2">密码</label>
                            <div class="col-md-10">
                                <input type="password" id="password" name="password" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-5">
                                <button type="submit" class="btn btn-default" >登录</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <div class="text-center">
                          <a href="#">忘记密码</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 登录对话框结束 -->
	
	 <!-- 注册对话框开始 -->
    <div id="register" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center">用户注册</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" method="post" action="RegisterServlet">
                        <div class="form-group">
                            <label for="username" class="control-label col-md-2">用户名</label>
                            <div class="col-md-10">
                                <input type="text"  name="accountRe" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-md-2">密码</label>
                            <div class="col-md-10">
                                <input type="password" name="passwordRe" class="form-control" />
                            </div>
                        </div>
						<div class="form-group">
                            <label for="password" class="control-label col-md-2">真实姓名</label>
                            <div class="col-md-10">
                                <input type="text" name="nameRe" class="form-control" />
                            </div>
                        </div>
						<div class="form-group">
                            <label for="password" class="control-label col-md-2">部门</label>
                            <div class="col-md-10">
                                <input type="text" name="departmentRe" class="form-control" />
                            </div>
                        </div>
						<div class="form-group">
                            <label for="password" class="control-label col-md-2">暗号</label>
                            <div class="col-md-10">
                                <input type="text" name="anhaoRe" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="text-center">
                                <button type="submit" class="btn btn-default" >注册</button>
                                <button type="button" class="btn btn-default" >返回</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <!-- 注册对话框结束 -->

<%@include file="footer.html" %>

</body>
</html>