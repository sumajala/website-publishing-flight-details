<%@ Page Language="C#" AutoEventWireup="true" CodeFile="redirectingpage.aspx.cs" Inherits="load" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>theukflights.com - Searching for flights</title>
    <style type="text/css">
body{
	font-family:Arial, Helvetica, sans-serif;
	font-size:11.5px;
	color:#666666;
	background-color:#e6f6fb;
	padding-top: 150px;
	font-weight: bold;
}
.blueboldtext{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #2E69A5;
}
.orangeboldtext{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11.5px;
	font-weight: bold;
	color: #ED7100;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="606" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="606" height="20" align="left" valign="top"><img src="images/redirect-header.gif" width="606" height="91" /></td>
  </tr>
  <tr>
    <td width="606" height="20" align="left" valign="top"><img src="images/sear-re.gif" width="606" height="26" /></td>
  </tr>
  <tr>
    <td width="606" height="20" align="left" valign="top" background="images/re-bg.gif"><table width="606" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="80" height="40" align="left" valign="middle"></td>
        <td width="446" height="40" align="center" valign="middle" background="images/Holidays/Loading-bar.gif"><img src="images/loading30.gif" width="128" height="15" /></td>
        <td width="80" height="40" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td width="80" height="20" align="left" valign="middle"></td>
        <td width="446" height="20" align="center" valign="middle">
        <span class="blueboldtext"><asp:Label ID="lblDestinationfrom" runat="server" Text=""></asp:Label></span> To <span class="blueboldtext">  <asp:Label ID="lbl_dest_to" runat="server" Text=""></asp:Label></span></td>
        <td width="80" height="20" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td width="80" height="20" align="left" valign="middle"></td>
        <td width="446" height="20" align="center" valign="middle" class="orangeboldtext">Departure:<asp:Label ID="Lbl_depdate" runat="server" Text=""></asp:Label>. Return:<asp:Label ID="lblrdate" runat="server" Text=""></asp:Label>.</td>
        <td width="80" height="20" align="left" valign="middle"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="606" height="5" align="left" valign="top" background="images/re-bg.gif"></td>
  </tr><tr>
    <td width="606" height="30" align="center" valign="middle" background="images/re-bg.gif"><img src="images/re-ple.gif" width="255" height="25" /></td>
  </tr>
  <tr>
    <td width="606" height="20" align="center" valign="top" background="images/re-bg.gif"><img src="images/redirectin-add.gif" alt="Flights to Bangkok" width="603" height="59" /></td>
  </tr>
  <tr>
    <td width="606" height="20" align="left" valign="top"><img src="images/re-cpoy.gif" width="606" height="34" /></td>
  </tr>
</table>
<asp:Label ID="lbl_codedf" runat="server" Text="" Visible="false"></asp:Label>
  <asp:Label ID="lbl_Adult" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_child" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_infant" runat="server" Text="" Visible="false"></asp:Label>
                   <asp:Label ID="lbl_guid" runat="server" Visible="False"></asp:Label>
    </div>
    </form>
</body>
</html>
