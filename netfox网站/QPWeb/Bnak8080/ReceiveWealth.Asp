<!--#include file="Inc/Config.asp" -->
<!--#include file="Inc/md5VB.asp" -->
<%
IF CxGame.GetInfo(0,"form","Submit")="刷新银子" Then
	Session("Deposits")=Empty	
	Session("money")=Empty
	Response.Redirect Request.ServerVariables("HTTP_REFERER")
	Response.End
End IF	
CxGame.ReceiveWealth
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#F0F0F0" leftmargin="0" topmargin="0" scroll="no">

<table width="380" height="240" cellpadding="5" cellspacing="0">
  <tr>
<form name="form1" method="post" action="">
<td>
<fieldset style="width:370;height=110" align="center"><legend>以下是您的财务信息</legend>
        <table width="100%" border="0" align="center" cellpadding="7" cellspacing="0" class="box">
          <tr> 
          <td width="66"> <div align="center" id="userid">银行存款:</div></td>
            <td width="232"> <input name="Deposits" type="text" class="xu" id="Deposits" value="<%=Session("Deposits")%>" readonly="true">
            </td>
        </tr>
        <tr> 
          <td width="66"> <div align="center">现有银子:</div></td>
            <td> <input name="money" type="text" class="xu" id="money2" value="<%=Session("money")%>" readonly="true">
              <input name="Submit" type="submit" class="bsys" id="Submit" value="刷新银子"> </td>
        </tr>
      </table>
      </fieldset>
<br>
<fieldset style="width:370;height=100" align="center">
        <legend>取出银子</legend>
        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="box">
          <tr> 
            <td width="66"> <div align="center">取出银子:</div></td>
            <td width="232"> <input name="money2" type="text" class="input" id="money22" value="0" style="ime-mode:disabled" onKeyDown="if(event.keyCode==13)event.keyCode=9"> 
              <input name="login" type="hidden" id="login4" value="true"> </td>
          </tr>
          <tr>
            <td width="66"><div align="center">银行密码:</div></td>
            <td><input name="password" type="password" class="input" id="getcode"></td>
          </tr>
          <tr> 
            <td>&nbsp;</td>
            <td><input name="Submit" type="submit" class="bsys" value="取出银子"></td>
          </tr>
        </table>
        </fieldset>
</td>
</form>
</tr>

</table>
</body>
</html>
