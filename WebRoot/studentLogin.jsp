
<%@ page pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>物业管理系统_用户登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}

.STYLE1 {
	font-size: 12px
}
-->
</style>
<script type="text/javascript" src="jquery-1.4.3.js"></script>
<script type="text/javascript">
	function isIdUsed11() {
		var userName = $("#username").val();
		var passWord = $("#password").val();
		if (userName == "" || passWord == "") {
			alert("请输入用户名和密码");
			return;
		}
		$.post("login", {
			userName : userName,
			password : passWord
		}, function(result) {
			if (result == 1) {
				alert("用户名或密码错误！");
				$("#username").val("");
				$("#password").val("");
			} else {
				alert("登录成功！");
				window.location.href = "main.jsp";
			}
		}, "text");
	}
</script>


</head>

<body>
	<table width="100%" height="100%" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td bgcolor="9fc967">&nbsp;</td>
		</tr>
		<tr>
			<td height="604"><table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td height="604" background="images/login_02.gif">&nbsp;</td>
						<td width="989"><table width="100%" border="0"
								cellspacing="0" cellpadding="0">
								<tr>
									<td height="345" background="images/login_1.jpg">&nbsp;</td>
								</tr>
								<tr>
									<td height="47"><table width="100%" border="0"
											cellspacing="0" cellpadding="0">
											<tr>
												<td width="539" height="47" background="images/login_05.gif"
													nowrap="nowrap">&nbsp;</td>
												<td width="206" background="images/login_06.gif"
													nowrap="nowrap">

													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td width="17%" height="22"><div align="center">
																	<span class="STYLE1">用户</span>
																</div></td>
															<td width="58%" height="22"><div align="center">
																	<input name="username" type="text" id="username"
																		size="15"
																		style="height:17px; border:solid 1px #bbbbbb">
																</div></td>
															<td width="25%" height="22">&nbsp;</td>
														</tr>
														<tr>
															<td height="22"><div align="center">
																	<span class="STYLE1">密码</span>
																</div></td>
															<td height="22"><div align="center">
																	<input name="password" type="password" id="password"
																		size="15"
																		style="height:17px; border:solid 1px #bbbbbb">
																</div></td>
															<td height="22"><input type="button" value="登陆"
																onClick="isIdUsed11();"></td>
														</tr>
													</table>

												</td>
												<td width="244" background="images/login_07.gif"
													nowrap="nowrap">&nbsp;</td>
											</tr>
										</table></td>
								</tr>
								<tr>
									<td height="212" background="images/login_08.gif">&nbsp;</td>
								</tr>
							</table></td>
						<td background="images/login_04.gif">&nbsp;</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td bgcolor="70ad21">&nbsp;</td>
		</tr>
	</table>
</body>
</html>

