<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}

.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #ffffff;
	POSITION: relative;
	TOP: 2px
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold;
	LEFT: 3px;
	COLOR: #FFCC00;
	POSITION: relative;
	TOP: 2px
}
</style>
<script src="jquery-1.4.3.js" type="text/javascript"></script>
<script type="text/javascript">
	
</script>
<table width="165" height="100%" border="0" cellpadding="0"
	cellspacing="0">
	<tr>
		<td height="28" background="images/main_40.gif"><table
				width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="19%">&nbsp;</td>
					<td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
				</tr>
			</table></td>
	</tr>
	<tr>
		<td valign="top"><table width="151" border="0" align="center"
				cellpadding="0" cellspacing="0">
				<tr>
					<td><table width="100%" border="0" cellspacing="0"
							cellpadding="0">
						</table></td>
				</tr>
				<tr>
					<td><table width="100%" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td height="23" background="images/main_47.gif" id="imgmenu2"
									class="menu_title" onmouseover="this.className='menu_title2';"
									onmouseout="this.className='menu_title';" style="cursor:hand"><table
										width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="18%">&nbsp;</td>
											<td width="82%" class="STYLE1">保修单管理</td>
										</tr>
									</table></td>
							</tr>
							<tr>
								<td background="images/main_51.gif" id="submenu2"><div
										class="sec_menu">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td><table width="90%" border="0" align="center"
														cellpadding="0" cellspacing="0">
														<tr>
															<td width="16%" height="25"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td width="84%" height="23"><table width="95%"
																	border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"> <a
																				href="system_getIntroduction.action" target="mFrame">系统简介</a>
																		</span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a
																				href="repairOrder_un_getUnFinishM.action"
																				target="mFrame">未完成报修单管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"> <a
																				href="remindRepairOrder_getAllRemindM.action"
																				target="mFrame">催单管理</a>
																		</span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"> <a
																				href="repairingManagerAction_getAllRepairingManager.action"
																				target="mFrame">维修安排管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a
																				href="studentManagerAction_getAllStudents.action"
																				target="mFrame">学生管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a
																				href="repairOrder_getFinishM.action" target="mFrame">已完成报修单管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a
																				href="studentRanking_getAllRanking.action" target="mFrame">提交报修单排名</a></span></td>
																	</tr>
																</table></td>
														</tr>

														<tr>


														</tr>
													</table></td>
											</tr>
											<tr>
												<td height="5"><img src="images/main_52.gif"
													width="151" height="5" /></td>
											</tr>
										</table>
									</div></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td><table width="100%" border="0" cellspacing="0"
							cellpadding="0">

							<tr>
								<td background="images/main_51.gif" id="submenu3"
									style="DISPLAY: none"><div class="sec_menu">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td><table width="90%" border="0" align="center"
														cellpadding="0" cellspacing="0">
														<tr>
															<td width="16%" height="25"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td width="84%" height="23"><table width="95%"
																	border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a href="pay_getPay.action"
																				target="mFrame">缴费管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a href="rep_getRepairs.action"
																				target="mFrame">报修管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a
																				href="comp_getComplaint.action" target="mFrame">投诉管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
														<tr>
															<td height="23"><div align="center">
																	<img src="images/left.gif" width="10" height="10" />
																</div></td>
															<td height="23"><table width="95%" border="0"
																	cellspacing="0" cellpadding="0">
																	<tr>
																		<td height="20" style="cursor:hand"
																			onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "
																			onmouseout="this.style.borderStyle='none'"><span
																			class="STYLE3"><a href="alarm_getAlarm.action"
																				target="mFrame">报警管理</a></span></td>
																	</tr>
																</table></td>
														</tr>
													</table></td>
											</tr>
											<tr>
												<td height="5"><img src="images/main_52.gif"
													width="151" height="5" /></td>
											</tr>
										</table>
									</div></td>
							</tr>
						</table></td>
				</tr>
			</table></td>
	</tr>
	<tr>
		<td height="18" background="images/main_58.gif"><table
				width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="18" valign="bottom"><div align="center"
							class="STYLE3">版本：2012V1.0</div></td>
				</tr>
			</table></td>
	</tr>
</table>
<script>
	function showsubmenu(sid) {
		whichEl = eval("submenu" + sid);
		imgmenu = eval("imgmenu" + sid);
		if (whichEl.style.display == "none") {
			eval("submenu" + sid + ".style.display=\"\";");
			imgmenu.background = "images/main_47.gif";
		} else {
			eval("submenu" + sid + ".style.display=\"none\";");
			imgmenu.background = "images/main_48.gif";
		}
	}
</script>