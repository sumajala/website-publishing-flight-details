<%@ Page Language="C#" AutoEventWireup="true" CodeFile="request-call-back.aspx.cs" Inherits="requestcallback_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UK Flights | Cheap flights from the UK</title>
<style type="text/css">
body{
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
color:#333333; 					
color: #666666;
}
.maintablecolor{
	background-color: #e8e8e8;
	border: 1px solid #3366FF;
}
.whiteboldtext{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #427087;
	font-weight: bold;
}
#close-btn {
	float: right;
	height: 21px;
	width: 21px;
	margin-top: 5px;
	margin-right: 10px;
	margin-bottom: 5px;
}
#main {
	width: 530px;
	float: left;
	margin: 5px;
}
#left-slider {
	float: left;
	width: 110px;
}
.Cus-details {
	height: 20px;
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
	width: 100px;
	margin-left: 10px;
}
.form-box{
	float: right;
	height: 20px;
	width: 420px;
	margin-top: 5px;
	margin-bottom: 5px;
}
.content {
	width: 520px;
	margin-left: 10px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #666666;
	margin-bottom: 5px;
}
#right-slider {
	float: left;
	width: 420px;
}
#headertext {
	width: 300px;
	margin-left: 10px;
	height: 18px;
	float: left;
	margin-top: 7px;
}
.formstyle{
	width: 170px;
	border: 1px solid #D7D7D7;
	height: 18px;
	text-indent: 5px;
	background-color: #F8F8F8;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11.5px;
	color: #666666;
}
.listmenu style{
	width: 170px;
	border: 1px solid #9C9C9C;
	height: 15px;
	text-indent: 5px;
}
.smalltext{
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	color: #818181;
}
.textareastyle{
	border: 1px solid #D7D7D7;
	background-color: ##F8F8F8;
	width: 400px;
	text-indent: 5px;
}
.clr{
clear:both;
}
.style1 {width: 520px; margin-left: 10px; font-family: Arial, Helvetica, sans-serif; font-size: 11px; color: #666666; margin-bottom: 5px; font-weight: bold; }
.style2 {height: 20px; margin-top: 5px; margin-bottom: 5px; float: left; width: 100px; margin-left: 10px; font-weight: bold; }
</style>
</head>
<body>
    <form id="form1" runat="server">
<table width="550" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="550" height="35" align="left" valign="middle" background="images/popup-top.gif"><div id="headertext"><span class="whiteboldtext">Your details</span></div>
      </td>
  </tr>
  <tr>
    <td width="550" height="20" align="left" valign="top" background="images/popup-middle.gif"><div id="main">
      <div id="left-slider">
        <div class="style2">Title</div>
          <div class="style2">First Name</div>
                        <div class="style2">Last  Name</div>
                        <div class="style2">Phone Number </div>
        <div class="style2">Email Address </div>
      </div>
      <div id="right-slider">
        <div class="form-box">
            &nbsp;<asp:DropDownList ID="Title_ddlist" runat="server" Width="175px">
                <asp:ListItem Value="1" Selected="True">Mr.</asp:ListItem>
                <asp:ListItem Value="2">Ms.</asp:ListItem>
                <asp:ListItem Value="3">Mrs.</asp:ListItem>
                <asp:ListItem Value="4">Miss</asp:ListItem>
                <asp:ListItem Value="5">Master</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="Title_ddlist" ErrorMessage="Select Title" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>
        <div class="form-box">
          &nbsp;<asp:TextBox ID="TextBox_FirstName" runat="server" 
                Width="170px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox_FirstName" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
        </div>
        <div class="form-box">
          &nbsp;<asp:TextBox ID="TextBox_LastName" runat="server" Width="170px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox_LastName" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
        </div>
        <div class="form-box">
          &nbsp;<asp:TextBox 
                ID="TextBox_phoneno" runat="server" Width="170px" MaxLength="11"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox_phoneno" ErrorMessage="Enter Phone no"></asp:RequiredFieldValidator>
        </div>
        <div class="form-box">
          &nbsp;<asp:TextBox ID="TextBox_emailid" runat="server" Width="170px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="TextBox_emailid" ErrorMessage="Invaild Email id" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
      </div>
    </div>
    <div class="clr"></div>
    <div class="content">
      &nbsp;<asp:CheckBox 
            ID="CheckBox2" runat="server" 
            
            Text="We will only use your email address to let you know if we are unable to call you at the time requested. " 
            oncheckedchanged="CheckBox2_CheckedChanged" AutoPostBack="True" />
    </div>
 <div class="clr">
     <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </div>
        <div class="style1">Your Message</div>
        <div class="clr"></div>
      <div class="content"><label>&nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="85px" TextMode="MultiLine" 
              Width="511px"></asp:TextBox>
      </label></div>
        <div class="clr"></div>
            <div class="content">
      &nbsp;<asp:CheckBox 
                    ID="CheckBox3" runat="server" 
                    
                    Text="Please tick the box if you would like to receive other relevant information from The UK Flights via email. " 
                    oncheckedchanged="CheckBox3_CheckedChanged" />
    </div>
        <div class="clr">
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        </div>
                    <div class="content">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/requestcallback/images/callme-back.gif" 
                            onclick="ImageButton1_Click" />
        &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
        </div>

    </td>
  </tr>
  <tr>
    <td width="550" height="8" align="left" valign="top" background="images/popup-top-bottom.gif"></td>
  </tr>
</table>
    </form>
</body>
</html>
