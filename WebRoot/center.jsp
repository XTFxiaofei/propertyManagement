<%@ page  pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
overflow:hidden;
}
-->
</style>
<style> 
.navPoint { 
COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
} 
</style>
<script>
function switchSysBar(){ 
var locate=location.href.replace('center.html','');
var ssrc=document.all("img1").src.replace(locate,'');
if (ssrc=="images/main_18.gif")
{ 
document.all("img1").src="images/main_18_1.gif";
document.all("frmTitle").style.display="none" 
} 
else
{ 
document.all("img1").src="images/main_18.gif";
document.all("frmTitle").style.display="" 
} 
} 
</script>

</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
  <tr>
    <td width="173" id=frmTitle noWrap name="fmTitle" align="center" valign="top">
	<iframe name="I1" height="100%" width="180" src="left.jsp" border="0" frameborder="0" scrolling="no">
	�����֧��Ƕ��ʽ��ܣ�������Ϊ����ʾǶ��ʽ��ܡ�</iframe>	</td>
    <td width="8" valign="middle" background="images/main_12.gif" onclick="switchSysBar();"><span class="navPoint"><img src="images/main_18.gif" name="img1" width=8 height=52 id=img1></span></td>
    <td align="center" valign="top">
    <iframe name="I2" height="100%" width="100%" border="0" frameborder="0" src="right.jsp"> �����֧��Ƕ��ʽ��ܣ�������Ϊ����ʾǶ��ʽ��ܡ�</iframe>
    </td>
    <td width="4" align="center" valign="top" background="images/main_20.gif">��</td>
  </tr>
</table>
</body>
</html>