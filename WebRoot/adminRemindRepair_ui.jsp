<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}

.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}

.STYLE6 {
	color: #000000;
	font-size: 12;
}

.STYLE10 {
	color: #000000;
	font-size: 12px;
}

.STYLE19 {
	color: #344b50;
	font-size: 12px;
}

.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}

.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>
<script type="text/javascript" src="jquery-1.4.3.js"></script>
<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

$(function()
{
	$("#allCheck").click(function()
	{
		var ischeck=$("#allCheck").attr("checked");
		var checkboxlist = $("#infomation [name='checkbox']");
		if(ischeck == true)
		{
			for ( var i = 0; i < checkboxlist.length; i++) 
			{
				$(checkboxlist[i]).attr("checked", "checked");
			}
		}
		else
		{
			for ( var i = 0; i < checkboxlist.length; i++) 
			{
				$(checkboxlist[i]).attr("checked", false);
			}
		}
	})
	$("#delete").click(function()
	{
		var j=0;
		var checkboxlist = $("#infomation [name='checkbox']");
		for ( var i = 0; i < checkboxlist.length; i++) 
		{
			if($(checkboxlist[i]).attr("checked")==true)
			{
				j++;
			}
		}
		if(j==0){alert("请先选择");}
		else
		{	
			$("#deleteBill").click();
		}
	})
	
	$("#edit").click(function()
	{	
		var j=0;
		var billId;
		var checkboxlist = $("#infomation [name='checkbox']");
		for ( var i = 0; i < checkboxlist.length; i++) 
		{
			if($(checkboxlist[i]).attr("checked")==true)
			{
				billId=$(checkboxlist[i]).val();
				j++;
			}
		}
		if(j>1){alert("只能选一项");}
		else if(j==0){alert("请先选择");}
		else
		{	
			url="com_select?com_id="+billId;
			//alert(url);
			window.location.href = encodeURI(url);
		}
	})
})

</script>


</head>

<body>
	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="10"><table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td height="24" bgcolor="#FFFFFF"><table width="100%"
								border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="6%" height="19" valign="bottom"><div
														align="left">
														<img src="images/tabtb.gif" width="14" height="14" />
													</div></td>
												<td width="94%" valign="bottom"><span class="STYLE1"><font
														color="#010E21" size='3'>所有的催单</font></span></td>
											</tr>
										</table>
									</td>
									<td>
										<form action="com_selectlike.action" method="get">
											设置查询值：<input type="text" name="s" /><input type="submit"
												value="开始查询" />
										</form>
									</td>
									<td>
										<div align="left">
											<span class="STYLE1"> &nbsp;&nbsp; <img
												src="images/del.gif" width="10" height="10" /> <input
												type="button" id="delete" value="删除催单" /> &nbsp;&nbsp;
												&nbsp;&nbsp;<img src="images/tabedit.gif" width="10"
												height="10" /><input type="button" id="edit" value="安排检修" />
												&nbsp;
											</span><span class="STYLE1"> &nbsp;</span>
										</div>
									</td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td>
				<form action="repairOrder_un_delete" method="get" id="formsubmit">
					<table id="infomation" width="100%" border="0" cellpadding="0"
						cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"
						onmouseout="changeback()">
						<tr>
							<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10"><div
									align="center">
									<input type="checkbox" name="allCheck" id="allCheck" />
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">报修单编号</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">具体描述</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">地点</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">现场照片</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">报修单提交时间</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">报修单状态</span>
								</div></td>
							<td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">提交者编号</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">提交者</span>
								</div></td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
									align="center">
									<span class="STYLE10">催单时间</span>
								</div></td>
						</tr>
						<s:iterator value="getdate">
							<tr>
								<td width="4%" height="20" bgcolor="d3eaef" class="STYLE10"><div
										align="center">
										<input type="checkbox" name="checkbox"
											value='<s:property value="com_id"/>' />
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="id"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property
												value="problemDescription"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="place"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="problemImage"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="launchDateStr"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property
												value="order_status_str"></s:property></span>
									</div></td>
								<td width="20%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="studentId"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="studentName"></s:property></span>
									</div></td>
								<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div
										align="center">
										<span class="STYLE10"><s:property value="remindDateStr"></s:property></span>
									</div></td>
							</tr>
						</s:iterator>

					</table>
					<input type="submit" id="deleteBill" style="display: none;" />
				</form>
			</td>
		</tr>


	</table>
</body>
</html>
