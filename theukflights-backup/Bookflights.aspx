<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bookflights.aspx.cs" Inherits="Bookflights" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>UK Flights | Cheap flights from the UK</title>
    <link rel="SHORTCUT ICON" href="2.ico"/>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    
 <script type="text/javascript">
<!--
     function popup(mylink, windowname) {
         if (!window.focus) return true;
         var href;
         if (typeof (mylink) == 'string')
             href = mylink;
         else
             href = mylink.href;
         window.open(href, windowname, 'width=600,height=450,location=1,scrollbars=1');
         return false;
     }
//-->
</script>
  <meta name="google-site-verification" content="Y70YioEu049QFRCgUiEnbgijB67o_dQcElCy2IwiZ7Y" />
  <!-- start of css menu-->
   <style type="text/css">
.whitebold-Font{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	color: #FFFFFF;
	text-indent: 5px;
}
.smallorangcolor-font{
	font-family: "Helvetica Neue";
	font-size: 17px;
	font-weight: bold;
	color: #FF3300;
	text-decoration: none;
	letter-spacing: -1px;
	text-indent: 5px;
}
.small-black-color-font{
	font-family: "Helvetica Neue";
	font-size: 19px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
	letter-spacing: -1px;
}
.small-black-color-font:hover{
	font-family: "Helvetica Neue";
	font-size: 19px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
	letter-spacing: -1px;
}
.blackboldtext2{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #5C5C5C;
	text-decoration: none;
}
#cssmenu ul{
	margin:0;
	padding:0;
	list-style-type:none;
	width:auto;
	position:relative;
	display:block;
	height:39px;
	text-transform:uppercase;
	font-size:12px;
	font-weight:bold;
	font-family:Helvetica,Arial,Verdana,sans-serif;
	background-color: transparent;
	background-image: url(images/OFF.gif);
	background-repeat: repeat-x;
}
#cssmenu li{
	display:block;
	float:left;
	margin:0;
	pading:0;}
#cssmenu li a{
	display:block;
	float:left;
	color:#FFFFFF;
	text-decoration:none;
	font-weight:bold;
	height:24px;
	background-color: transparent;
	background-image: url(images/DIVIDER.gif);
	background-repeat: no-repeat;
	background-position: right top;
	padding-top: 12px;
	padding-right: 18px;
	padding-bottom: 0;
	padding-left: 18px;
	}
#cssmenu li a:hover{
	background-color: transparent;
	background-image: url(images/HOVER.gif);
	background-repeat: repeat-x;
}
.formstyle-mini{
	border: 1px solid #9C9383;
	text-indent: 5px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11.5px;
	color: #7A7A7A;
	width: 200px;
}	
.Blue-Border-color{
	border: 1px solid #BFBFBF;
}
.BalckBigboldtext{
	font-family: Ubuntu;
	font-size: 38px;
	font-weight: bold;
	color: #2E69A5;
	text-decoration: none;
	letter-spacing: -3px;
}
.black-helvetica{
	font-family: "Helvetica Neue";
	font-size: 18px;
	color: #737373;
	font-weight: bold;
	letter-spacing: -1px;
	text-indent: 5px;
}

        input[type=text]
        {
            margin-bottom: 10pt;
            margin-left :10px;
            margin-right:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
      <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="10" height="100" align="left" valign="middle"><a href="#"></a></td>
    <td width="317" height="100" align="left" valign="middle"><a href="http://www.theukflights.com">
        <img src="images/theukflights-logo.png" alt="theukflights" width="280" 
            height="48" border="0" title="fly the world with the UK flights" /></a></td>
    <td width="97" align="left" valign="middle"></td>
    <td width="486" height="100" align="right" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="35" colspan="2" align="right" valign="middle">[<a href="login.aspx" class="headernavigation"> Sign In</a> ] - <a href="travelinfo.aspx" class="headernavigation">Travel Info</a> - <a href="" class="headernavigation">Customer Support</a> - <a href="#" class="headernavigation"> feedback</a></td>
      </tr>
      <tr>
        <td width="51%" height="45" align="right" valign="top">
            <img src="Deals/images/atol_logo.png" alt="Acc" 
                style="height: 52px; width: 55px" /></td>
        <td width="49%" height="45" align="right" valign="top"><img src="images/Book-online-or-call.gif" alt="Book online now" width="210" height="45" /></td>
      </tr>
      <tr>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
      </tr>
    </table></td>
    <td width="79" height="100" align="left" valign="bottom"><img src="images/call-lady.gif" alt="call lady" width="78" height="89" /></td>
    <td width="11" height="100" align="left" valign="top"></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">

    <tr>
    <td width="10"></td>
    <td width="980"><table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="1" height="40" align="left" valign="top"></td>
        <td width="851" height="40" align="left" valign="top"><div id='cssmenu'>

          <ul>
            <li class="active"><a href="http://www.theukflights.com/Default.aspx"><span>Home</span></a></li>
            <li><a href="http://www.theukflights.com/flights.aspx"><span>Flights</span></a></li>
            <li><a href="http://www.theukflights.com/bussinessclass.aspx"><span>Business Class</span></a></li>
            <li><a href="http://www.theukflights.com/citybreaks.aspx"><span>City Breaks</span></a></li>
            <li><a href="http://www.theukflights.com/Hoildays.aspx"><span>Leisure Travel </span></a></li>
            <li><a href="http://www.theukflights.com/aboutus.aspx"><span>About us</span></a></li>
            <li><a href="http://www.theukflights.com/contactus.aspx"><span>contact us</span></a></li>
            <li><a onclick="return popup(this,'sreekanth')" href="http://www.theukflights.com/requestcallback/request-call-back.aspx"><span>Request Call Back </span></a></li>
          </ul>
        </div></td>
        <td width="10" align="left" valign="top"></td>
        <td width="107" align="center" valign="top"><a href="javascript:;"  onclick="openLiveHelp();"><img src="images/livecaht.gif" width="106" height="29" border="0" title="Live Chat" alt="livechat"/></a></td>
        <td width="10" height="40" align="left" valign="top"><a href="#"></a></td>
      </tr>
    </table></td>
    <td width="10"></td>
  </tr>
</table>
           <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="maintableborder">
         <div>
         
             <tr>
        <td>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="maintableborder">
  <tr align="left" valign="middle">
    <td width="9" height="65"></td>
    <td height="65" colspan="4" class="BalckBigboldtext">Booking your flight</td>
    <td width="47" height="65"></td>
  </tr>
  <tr align="left" valign="middle">
    <td width="9" height="10" rowspan="13"></td>
    <td width="2" height="10" rowspan="13"></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top" bgcolor="#E6F6FB"><table width="981" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="261" height="30" align="center" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font">1.Review Your Flights Detials:</td>
        <td width="235" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font"></td>
        <td width="284" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font"></td>
        <td width="201" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif"><img src="images/Booking-Engine/Corner-bg.gif" width="47" height="33" /></td>
      </tr>
      <tr>
        <td height="10" colspan="4" align="left" valign="middle" bgcolor="#E6F6FB"></td>
      </tr>
      <tr>
        <td height="10" colspan="4" align="left" valign="middle" bgcolor="#E6F6FB"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr bgcolor="#B9DDF4">
            <td width="7" height="25" align="left" valign="top"></td>
            <td height="25" align="left"></td>
            <td width="96" height="25" align="center" class="blackboldtext2">Airline</td><td width="254" height="25" align="center" valign="middle" class="blackboldtext2">Departs</td>
            <td width="259" align="center" valign="middle" class="blackboldtext2">Arrivels</td>
         </td>
            <td width="90" align="center" class="blackboldtext2">&nbsp;</td>
            <td width="89" align="center" class="blackboldtext2">&nbsp;</td>
            <td width="62" align="center" class="blackboldtext2">Flights no </td><td width="96" align="center" class="blackboldtext2">Flight Class</td>
            <td width="1" height="25" align="left"></td>
          </tr>
          <tr>
            <td width="7" height="65" align="left" valign="top"></td>
            <td width="21" height="65" align="left"><img src="images/Booking-Engine/small-flight.gif" width="21" height="20" /></td>
            <td width="96" height="65" align="center" class="orangcolortext">
                <asp:Label id="Sid1Airlinenames" runat="server" text=""></asp:label></td>
            <td width="254" height="65" align="center" valign="middle">
                
                <span class="blackboldtext2">
                    <asp:Label ID="lbl_Sid1DepartureAirport" runat="server" Text=""></asp:Label>,
                <asp:Label ID="Sid1DepartCity" runat="server" Text=""></asp:Label> <br />
            </span><span class="blackboldtext2"><asp:Label ID="Sid1DepartDate" runat="server" Text=""></asp:Label><asp:Label ID="Sid1DepartTime" runat="server" Text=""></asp:Label></span></td>
            <td width="259" height="65" align="center" valign="middle" class="blackboldtext2">
                <asp:Label ID="lbl_Sid1Arrivalairport" runat="server" 
                          Text=""></asp:Label>
                ,<asp:Label ID="Sid1ArrivalCity" runat="server" Text=""></asp:Label><br /> <asp:Label ID="Sid1ArrivalDate" runat="server" Text=""></asp:Label> <asp:Label ID="Sid1ArrivalTime" runat="server" Text=""></asp:Label> </td>
            <td height="65" align="center" valign="bottom" class="blackboldtext2">&nbsp;</td>
            <td height="65" align="center" class="blackboldtext2">&nbsp;</td>
            <td height="65" align="center" class="blackboldtext2"><asp:Label ID="Sid1FlightNo" runat="server" Text=""></asp:Label></td><td height="65" align="center" class="blackboldtext2">Economy</td>
            <td width="1" height="65" align="left" class="blackboldtext2"></td>
          </tr>
          <tr align="center">
            <td width="7" height="65" valign="top"></td>
            <td height="65"><img src="images/Booking-Engine/small-flight.gif" width="21" height="20" /></td>
            <td width="96" height="65"><span class="orangcolortext"><asp:Label ID="Sid2Airlines" runat="server" Text=""></asp:Label></span></td>
            <td height="65" class="blackboldtext2">
                <span class="blackboldtext2" 
                          __designer:mapid="3150">
                <asp:Label ID="Label3" runat="server" 
                    Text='<%# Eval("Sid2DepartAirportName1") %>'></asp:Label>
                ,</span><asp:Label ID="Sid2DepartCity" runat="server" Text=""></asp:Label><br />      <asp:Label ID="Sid2DepartDate" runat="server" Text=""></asp:Label>     <asp:Label ID="Sid2Departtime" runat="server" Text=""></asp:Label>  </td>
            <td height="65" class="blackboldtext2">
                <asp:Label ID="Label5" runat="server" 
                          Text='<%# Eval("Sid2ArrivalAirportName1") %>'></asp:Label>
                ,<asp:Label ID="Sid2ArrivalCity" runat="server" Text=""></asp:Label><br />          
              <asp:Label ID="Sid2ArrivalDate" runat="server" Text=""></asp:Label> <asp:Label ID="Sid2Arrivaltime" runat="server" Text=""></asp:Label><br /></td>
            <td height="65"></td>
            <td height="65" class="blackboldtext2">&nbsp;</td>
            <td height="65" class="blackboldtext2"><asp:Label ID="Sid2flightno" runat="server" Text=""></asp:Label></td> <td height="65"><span class="blackboldtext2">Economy</span></td>
            <td width="1" height="65"></td>
          </tr>
          <tr bgcolor="#B9DDF4">
            <td width="7" height="1" align="left" valign="top"></td>
            <td height="1" colspan="8" align="left"></td>
            <td width="1" height="1" align="left"></td>
          </tr>          <tr align="center">
            <td width="7" height="65" valign="top"></td>
            <td height="65"><img src="images/Booking-Engine/small-flights-2.gif" width="21" height="20" /></td>
            <td height="65"><span class="orangcolortext"><asp:Label ID="Sid3RAirlines" runat="server" Text=""></asp:Label></span></td>
            <td height="65" class="blackboldtext2">
                <asp:Label ID="Label6" runat="server" 
                          Text='<%# Eval("Sid3DepartAirportName1") %>'></asp:Label>
                ,<asp:Label ID="Sid3RDepartCity" runat="server" Text=""></asp:Label><br />
               <asp:Label ID="Sid3RDepartDate" runat="server" Text=""></asp:Label>
               <asp:Label ID="Sid3RDeparttime" runat="server" Text=""></asp:Label><br /></td>
            <td height="65" class="blackboldtext2">
                <asp:Label ID="Label7" runat="server" 
                          Text='<%# Eval("Sid3ArrivalAirportName1") %>'></asp:Label>
                ,<asp:Label ID="Sid3RArrivalcity" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Sid3RArrivalDate" runat="server" Text=""></asp:Label>
              <asp:Label ID="Sid3RArrivaltime" runat="server" Text=""></asp:Label><br /></td>
            <td height="65" valign="bottom" class="blackboldtext2">&nbsp;</td>
            <td height="65" class="blackboldtext2">&nbsp;</td>
            <td height="65" class="blackboldtext2"><asp:Label ID="Sid3RFlightno" runat="server" Text=""></asp:Label></td><td height="65"><span class="blackboldtext2">Economy</span></td>
            <td width="1" height="65"></td>
          </tr>
          <tr align="center">
            <td width="7" height="65" valign="top"></td>
            <td height="65"><img src="images/Booking-Engine/small-flights-2.gif" width="21" height="20" /></td>
            <td height="65"><span class="orangcolortext"><asp:Label ID="Sid4RAirlines" runat="server" Text=""></asp:Label></span></td>
            <td height="65" class="blackboldtext2">
                <span class="blackboldtext2" 
                          
                <asp:Label ID="Label9" runat="server" 
                          Text='<%# Eval("Sid4DepartAirportName1") %>'></asp:Label>
                </span>,<asp:Label ID="Sid4RDepartCity" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Sid4RDepartDate" runat="server" Text=""></asp:Label> <asp:Label ID="Sid4RDeparttime" runat="server" Text=""></asp:Label><br /></td>
            <td height="65" class="blackboldtext2">
                <asp:Label ID="Label10" runat="server" 
                          Text='<%# Eval("Sid4ArrivalAirportName1") %>'></asp:Label>
                ,<asp:Label ID="Sid4RArrivalcity" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Sid4ArrivalDate" runat="server" Text=""></asp:Label><asp:Label ID="Sid4RArrivaltime" runat="server" Text=""></asp:Label></td>
            <td height="65"></td>
            <td height="65" class="blackboldtext2">&nbsp;</td>
            <td height="65" class="blackboldtext2"><asp:Label ID="sid4RFlightno" runat="server" Text=""></asp:Label></td><td height="65"><span class="blackboldtext2">Economy</span></td>
            <td width="1" height="65"></td>
          </tr>
          <tr>
            <td width="7" height="10" align="left" valign="top"></td>
            <td height="10" colspan="8" align="left"></td>
            <td width="1" height="10" align="left"></td>
          </tr>

          <tr>
            <td width="7" height="10" align="left" valign="top"></td>
            <td height="10" colspan="8" align="left"></td>
            <td width="1" height="10" align="left"></td>
          </tr>

        </table></td>
      </tr>
      <tr>
        <td height="33" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB"><img src="images/Booking-Engine/corner-bg1.gif" width="47" height="33" /></td>
        <td height="33" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB"></td>
        <td height="33" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB" class="small-black-color-font"></td>
        <td width="10" height="33" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB" class="small-black-color-font">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top" bgcolor="#FFFFFF"></td>
  </tr>
  <tr align="left" valign="middle">
    <td width="13" height="30" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font"></td>
    <td width="721" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font">
        Passenger Name(s) -&nbsp;    (Name as it appears on the Passport)</td>
    <td width="201" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font">&nbsp;</td>
    <td width="47" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font"><img src="images/Booking-Engine/Corner-bg.gif" width="47" height="33" /></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top" bgcolor="#E6F6FB"></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top" bgcolor="#E6F6FB"><table width="975" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr align="left" valign="top">
        <td width="7" height="10"></td>
        <td width="115" height="10" class="blackboldtext2">Title*</td>
        <td width="212" class="blackboldtext2">First Name*</td>
        <td width="222" class="blackboldtext2">SurName*</td>
        <td width="280" class="blackboldtext2">Date of Birth*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sex*</td>
        <td width="136" class="blackboldtext2">&nbsp;</td>
        <td width="3" height="10"></td>
      </tr>
      <tr align="left" valign="middle">
        <td width="7" height="6"></td>
        <td height="6" colspan="5"></td>
        <td width="3" height="6"></td>
      </tr>
      <tr align="left" valign="middle">
        <td width="7" height="6">&nbsp;</td>
        <td height="6" colspan="5">
           <div>
           <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
         <asp:Literal ID="Literal2" runat="server" Visible="false"></asp:Literal>
          <asp:Literal ID="Literal3" runat="server" Visible="false"></asp:Literal>
    <asp:Panel ID="pnlAdult" runat="server">
    <p style="color:Gray; background-color:#B9DDF4; " class="black-helvetica">Adults:</p>

     <br />
        <asp:Label ID="lbla" runat="server" Text="Adult" Visible="false"></asp:Label>
       </asp:Panel>
        <asp:Panel ID="Panelchild" runat="server">
     <p style="background-color:#B9DDF4;" class="black-helvetica">Child:</p>

        <br />
        <asp:Label ID="lblc" runat="server" Text="child" Visible="false"></asp:Label>
       </asp:Panel>
        <asp:Panel ID="PanelInfant" runat="server" >
       <p style="color:Gray; background-color:#B9DDF4; " class="black-helvetica">Infant:</p>

        <br />
        <asp:Label ID="lbli" runat="server" Text="infant" Visible="false"></asp:Label>
       </asp:Panel>
     </div>
        
        &nbsp;</td>
        <td width="3" height="6">&nbsp;</td>
      </tr>
      <tr align="left" valign="middle" bgcolor="#E6F6FB">
        <td width="7" height="10"></td>
        <td height="10" colspan="5"></td>
        <td width="3" height="10"></td>
      </tr>
      <tr align="left" valign="middle" bgcolor="#B9DDF4">
        <td height="30"></td>
        <td height="30" colspan="5" class="black-helvetica">Contact Details:</td>
        <td height="30"></td>
      </tr>
      <tr align="left" valign="middle">
        <td height="10"></td>
        <td height="10" colspan="5"></td>
        <td height="10"></td>
      </tr>
      <tr align="left" valign="middle">
        <td height="10"></td>
        <td height="10" colspan="5"><table width="960" border="0" cellspacing="0" cellpadding="0">
          <tr align="left" valign="top">
            <td width="10" height="10"></td>
            <td width="115" height="10"><table width="115" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="115" height="35" align="left" valign="middle" class="blackboldtext2">Home 
                    Address*</td>
              </tr>
              <tr>
                <td width="115" height="35" align="left" valign="middle" class="blackboldtext2">&nbsp;</td>
              </tr>
              <tr>
                <td width="115" height="35" align="left" valign="middle" class="blackboldtext2">Mobile Number*</td>
              </tr>
              <tr>
                <td width="115" height="35" align="left" valign="middle" class="blackboldtext2">E-mail Address*</td>
              </tr>
            </table></td>
            <td width="832" height="10"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="55" height="35" align="left" valign="middle" class="blackboldtext2">
                    <asp:TextBox ID="txt_Homephone" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
                <td width="96" height="35" align="left" valign="middle" class="blackboldtext2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_Homephone" ErrorMessage="Enter Address" 
                        ValidationGroup="bookingrfv">*</asp:RequiredFieldValidator>
                  </td>
                <td width="94" height="35" align="left" valign="middle" class="blackboldtext2">Postal Code:</td>
                <td width="361" height="35" align="left" valign="middle" class="blackboldtext2">
                    <asp:TextBox ID="postalcode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="postalcode" ErrorMessage="Enter Postal code" 
                        ValidationGroup="bookingrfv">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td height="35" colspan="4" align="left" valign="middle" class="blackboldtext2">&nbsp;
                    </td>
              </tr>
              <tr>
                <td height="35" colspan="4" align="left" valign="middle" class="blackboldtext2">
                    <asp:TextBox ID="txt_Mobilenumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_Mobilenumber" ErrorMessage="Enter Mobile no" 
                        ValidationGroup="bookingrfv">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                <td height="35" colspan="4" align="left" valign="middle" class="blackboldtext2">
                    <asp:TextBox ID="txt_Emailaddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_Emailaddress" ErrorMessage="Enter Email Address" 
                        ValidationGroup="bookingrfv">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td height="10"></td>
      </tr>
      <tr align="left" valign="middle" bgcolor="#E6F6FB">
        <td height="10"></td>
        <td height="10" colspan="5"></td>
        <td height="10"></td>
      </tr>
      <tr align="left" valign="middle" bgcolor="#B9DDF4">
        <td height="30"></td>
        <td height="30" colspan="5" bgcolor="#B9DDF4" class="black-helvetica">Pricing Summary:</td>
        <td height="30"></td>
      </tr>
    </table></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="71" colspan="4" valign="top" bgcolor="#E6F6FB">
    <table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr align="left" valign="middle" bgcolor="#FFFFFF">
        <td width="12" height="10"></td>
        <td height="10" colspan="2"></td>
        <td width="5" height="10"></td>
        </tr>
      <tr align="left" valign="middle">
        <td width="12" height="10" valign="top" bgcolor="#B9DDF4"></td>
        <td width="557" height="10" valign="top" class="blackboldtext2"><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr align="center" bgcolor="#B9DDF4">
            <td width="2%" height="30" align="left" valign="middle" class="bluetext"></td>
            <td width="98%" align="left" valign="middle" class="blackboldtext2">&nbsp;&nbsp; Description</td>
          </tr>
          <tr align="center" bgcolor="#B9DDF4">
            <td height="30" align="left" valign="middle" class="blackboldtext2"></td>
            <td height="30" align="left" valign="middle" class="blackboldtext2">&nbsp;&nbsp; <asp:Label ID="bf_adultno" runat="server" Text=""></asp:Label> Adult, <asp:Label ID="bf_childno" runat="server" Text=""></asp:Label> child 
                ,<asp:Label ID="bf_infantno" runat="server" Text=""></asp:Label> infant</td>
          </tr>
          <tr align="center" bgcolor="#B9DDF4">
            <td height="40" align="left" valign="middle" class="blackboldtext2"></td>
            <td height="40" align="left" valign="middle" class="blackboldtext2">&nbsp; Adult 
                Fare:<asp:Label ID="lbl_adultfare" runat="server"></asp:Label>
                , Child Fare:<asp:Label ID="lbl_childfare" runat="server"></asp:Label>
                , Infant Fare:<asp:Label ID="lbl_infantfare" runat="server"></asp:Label>
              </td>
          </tr>
          <tr align="center" valign="middle" bgcolor="#B9DDF4">
            <td height="30" align="left"><p></p></td>
            <td height="30" align="left">&nbsp; ATOL Protection Fee</td>
          </tr>
          <tr align="center" bgcolor="#B9DDF4">
            <td height="40" align="left" valign="middle" class="h1"></td>
            <td height="40" align="left" valign="middle" class="black-helvetica">Total Amount</td>
          </tr>
        </table></td>
        <td width="406" align="right" valign="top" bgcolor="#B9DDF4"><table width="400" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr align="center" bgcolor="#B9DDF4">
            <td width="167" height="30" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="118" height="25" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="115" height="25" valign="middle" class="blackboldtext2">Total Including Tax</td>
          </tr>
          <tr align="center">
            <td width="167" height="30" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="118" height="25" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="115" height="25" valign="middle" class="blackboldtext2">£ 
                <asp:Label ID="lblbfTotalPrice" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr align="center" bgcolor="#B9DDF4">
            <td width="167" height="40" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="118" height="40" valign="middle" class="blackboldtext2">&nbsp;</td>
            <td width="115" height="40" valign="middle" class="blackboldtext2">&nbsp;</td>
          </tr>
          <tr align="center">
            <td width="167" height="30" valign="middle">&nbsp;</td>
            <td width="118" height="25" valign="middle">&nbsp;</td>
            <td width="115" height="25" valign="middle"><span class="blackboldtext2">£<asp:Label ID="lblAtolprice" runat="server" Text="2.50"></asp:Label></span></td>
          </tr>
          <tr align="center" bgcolor="#B9DDF4">
            <td width="167" height="40" valign="middle" class="black-helvetica">&nbsp;</td>
            <td width="118" height="40" valign="middle" class="black-helvetica">&nbsp;</td>
            <td width="115" height="40" valign="middle"><span class="black-helvetica">£<asp:Label ID="lblFinalToatalprice" runat="server" Text=""></asp:Label></span></td>
          </tr>
        </table></td>
        <td width="5" height="10"></td>
        </tr>
      <tr align="left" valign="middle" bgcolor="#FFFFFF">
        <td width="12" height="10"></td>
        <td height="10" colspan="2"></td>
        <td width="5" height="10"></td>
        </tr>
      <tr align="left" valign="top" bgcolor="#B9DDF4">
        <td width="12" height="30" bgcolor="#B9DDF4"></td>
        <td height="30" colspan="2" valign="middle" class="black-helvetica">Rules and Regulations:<br /></td>
        <td width="5" height="30" bgcolor="#E6F6FB"></td>
        </tr>
      <tr align="left" valign="middle">
        <td width="12" height="45"></td>
        <td height="45" colspan="2" class="blackboldtext2"><input type="checkbox" 
                name="checkbox" id="checkbox" checked="checked" />
          By ticking this box I hereby confirm that I have read and agreed to the Terms &amp; Conditions. It is the passenger’s responsibility to ensure all details of the booking are correct prior to confirming. Please review your details and note the final price including all applicable tax. Subsequently, click 'Make reservation' button.<br /></td>
        <td width="5" height="45"> </td>
        </tr>
      <tr align="left" valign="middle">
        <td height="30"></td>
        <td height="30" colspan="2" align="right" class="blackboldtext2"><a href="#">
            <asp:ImageButton ID="img_reg" runat="server" 
                ImageUrl="images/Booking-Engine/make-reservaction.gif" 
                ValidationGroup="bookingrfv" onclick="img_reg_Click" />
            </a></td>
        <td height="30"></td>
      </tr>
    </table></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="6" colspan="4" valign="top" bgcolor="#E6F6FB"></td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top">

    <asp:Label ID="lblDestinationfrom" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_dest_to" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Lbl_depdate" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lblrdate" runat="server" Text="" Visible="false"></asp:Label>

    <asp:Label ID="lbl_codedf" runat="server" Text="" Visible="false"></asp:Label>
  <asp:Label ID="lbl_Adult" runat="server" Text="" Visible="false"></asp:Label>
 <asp:Label ID="lbl_child" runat="server" Text="" Visible="false"></asp:Label>
 <asp:Label ID="lbl_infant" runat="server" Text="" Visible="false"></asp:Label>
 <asp:Label ID="lbl_guid" runat="server" Text="" Visible="False"></asp:Label>
 <asp:Label ID="lbl_bookRef" runat="server" Text="" Visible="False"></asp:Label>
    
    </td>
  </tr>
  <tr align="left" valign="middle">
    <td height="10" colspan="4" valign="top">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" ValidationGroup="bookingrfv" />
      </td>
  </tr>
  <tr align="left" valign="middle">
    <td width="13" height="10"></td>
    <td height="10" colspan="4" background="images/small-line.gif"></td>
    <td width="2" height="10"></td>
  </tr>
</table>
        </td>
    </tr>

    </div>
 <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="maintableborder">

  <tr>
    <td width="10" height="20" align="left" valign="top"></td>
    <td width="200" height="20" align="left" valign="top"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_unitedstates.aspx" class="destinationslink">Flights to United States</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_chile.aspx" class="destinationslink">Flights to Chile</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_jordan.aspx" class="destinationslink">Flights to Jordan</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_indonesia.aspx" class="destinationslink">Flights to Indonesia</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_germany.aspx" class="destinationslink">Flights to Germany</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_panama.aspx" class="destinationslink">Flights to Panama</a></td>
      </tr>
      <tr>
        <td width="10" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="180" height="18" align="left" valign="middle"><a href="Flights/flights_to_srilanka.aspx" class="destinationslink">Flights to Srilanka</a></td>
      </tr>
      <tr>
        <td width="10" height="20" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="180" height="20" align="left" valign="middle"><a href="Flights/flights_to_sudan.aspx" class="destinationslink">Flights to Sudan</a></td>
      </tr>
    </table></td>
    <td width="200" align="left" valign="top"><table width="200" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_canada.aspx" class="destinationslink">Flights to Canada</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_guyana.aspx" class="destinationslink">Flights to Guyana</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_saudiarabia.aspx" class="destinationslink">Flights to Saudi Arabia</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_china.aspx" class="destinationslink">Flights to China</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_finland.aspx" class="destinationslink">Flights to Finland</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_mexico.aspx" class="destinationslink">Flights to Mexico</a></td>
      </tr>
      <tr>
        <td width="16" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="174" height="18" align="left" valign="middle"><a href="Flights/flights_to_pakistan.aspx" class="destinationslink"> Flights to Pakistan</a></td>
      </tr>
      <tr>
        <td width="16" height="20" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="174" height="20" align="left" valign="middle"><a href="Flights/flights_to_auckland.aspx" class="destinationslink">Flights to Auckland</a></td>
      </tr>
    </table></td>
    <td width="180" align="left" valign="top"><table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_newzealand.aspx" class="destinationslink">Flights to New Zealand</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_brazil.aspx" class="destinationslink">Flights to Brazil</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_qatar.aspx" class="destinationslink">Flights to Qatar</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_malaysia.aspx" class="destinationslink">Flights to Malaysia</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_denmark.aspx" class="destinationslink">Flights to Denmark</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_guatemala.aspx" class="destinationslink">Flights to Guatemala</a></td>
      </tr>
      <tr>
        <td width="20" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="150" height="18" align="left" valign="middle"><a href="Flights/flights_to_nepal.aspx" class="destinationslink">Flights to Nepal</a></td>
      </tr>
      <tr>
        <td width="20" height="20" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="150" height="20" align="left" valign="middle"><a href="Flights/flights_to_uganda.aspx" class="destinationslink">Flights to Uganda</a></td>
      </tr>
    </table></td>
    <td width="204" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_papua-new-guinea.aspx" class="destinationslink">Flights to Papua New Guinea</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_colombia.aspx" class="destinationslink">Flights to Colombia</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_kuwait.aspx" class="destinationslink">Flights to Kuwait</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_thailand.aspx" class="destinationslink">Flights to Thailand</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_belgium.aspx" class="destinationslink">Flights to Belgium</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_el-salvador.aspx" class="destinationslink">Flights to El Salvador</a></td>
      </tr>
      <tr>
        <td width="10%" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="18" align="left" valign="top"></td>
        <td width="85%" height="18" align="left" valign="middle"><a href="Flights/flights_to_bangladesh.aspx" class="destinationslink">Flights to Bangladesh</a></td>
      </tr>
      <tr>
        <td width="10%" height="20" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="5%" height="20" align="left" valign="top"></td>
        <td width="85%" height="20" align="left" valign="middle"><a href="Flights/flights_to_nigeria.aspx" class="destinationslink">Flights to Nigeria</a></td>
      </tr>
    </table></td>
    <td width="194" align="left" valign="top"><table width="194" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_australia.aspx" class="destinationslink">Flights to Australia</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_argentina.aspx" class="destinationslink">Flights to Argentina</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_bahrain.aspx" class="destinationslink">Flights to Bahrain</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_philippines.aspx" class="destinationslink">Flights to Phillipines</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_italy.aspx" class="destinationslink">Flights to Italy</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_costarica.aspx" class="destinationslink">Flights to Costa Rica</a></td>
      </tr>
      <tr>
        <td width="19" height="18" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="18" align="left" valign="top"></td>
        <td width="165" height="18" align="left" valign="middle"><a href="Flights/flights_to_india.aspx" class="destinationslink">Flights to India</a></td>
      </tr>
      <tr>
        <td width="19" height="20" align="right" valign="middle"><img src="images/Holidays/Arrow.gif" width="8" height="11" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="165" height="20" align="left" valign="middle"><a href="Flights/flights_to_ghana.aspx" class="destinationslink">Flights to Ghana</a></td>
      </tr>
    </table></td>
    <td width="10" height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td height="10" colspan="5" align="left" valign="top" background="images/small-line.gif"></td>
    <td width="10" height="10" align="left" valign="top"></td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="maintableborder">
  <tr>
    <td width="10" height="20" align="left" valign="top"></td>
    <td height="20" colspan="5" align="center" valign="middle"><img src="images/Airlines-logos.gif" alt="Airline Logos" width="966" height="37" /></td>
    <td width="13" height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td height="10" colspan="5" align="left" valign="top" background="images/small-line.gif"></td>
    <td width="13" height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="30" align="left" valign="top"></td>
    <td width="451" height="30" align="left" valign="top"><table width="450" border="0" cellspacing="0" cellpadding="0">
      <tr valign="bottom">
        <td width="100" height="37" align="left" valign="middle"><strong>FOLLOW US:</strong></td>
        <td width="32" align="left" valign="bottom"><a href="http://www.facebook.com/pages/The-UK-Flights/147999271930630?fref=ts"><img src="images/facebook.png" alt="facebook" width="32" height="32" border="0" /></a></td>
        <td width="5" align="left" valign="middle"></td>
        <td width="32" height="37" align="left"><a href="https://twitter.com/intent/follow?original_referer=http%3A//www.theukflights.com/&amp;screen_name=TheUKFlights&amp;source=followbutton&amp;variant=2.0"><img src="images/twitter.png" alt="twitter" width="32" height="32" border="0" /></a></td>
        <td width="5" height="37" align="left"></td>
        <td width="32" height="37" align="left"><a href="#"><img src="images/Yahoo.png" alt="yahoo" width="32" height="32" border="0" /></a></td>
        <td width="5" height="37" align="left"></td>
        <td width="32" height="37" align="left"><a href="#"><img src="images/rss.png" alt="rss" width="32" height="32" border="0" /></a></td>
        <td width="5" height="37" align="left"></td>
        <td width="36" height="37" align="left"><img src="images/youtube.png" alt="youtube" width="32" height="32" /></td>
        <td width="187" height="37" align="left"></td>
      </tr>
    </table></td>
    <td width="170" height="30" align="right" valign="top">
        <img src="Deals/images/atol_logo.png" 
            style="height: 44px; width: 48px; text-align: center; margin-right:10px;"/>&nbsp; </td>
    <td width="96" height="30" align="center" valign="middle"><p class="blackboldtext">Payment Option:</p></td>
    <td width="255" height="30" align="right" valign="middle"><img src="images/payment-optiopn.gif" alt="payment option" width="255" height="37" /></td>
    <td width="5" height="30" align="right" valign="middle"></td>
    <td width="13" height="30" align="left" valign="top"></td>
  </tr><tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="middle"></td>
    <td height="10" align="right" valign="top"></td>
    <td height="10" align="center" valign="middle"></td>
    <td height="10" align="right" valign="middle"></td>
    <td height="10" align="right" valign="middle"></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="4%" height="39" align="left" valign="top" background="images/footer-bg.gif"></td>
    <td width="91%" height="39" align="left" valign="top" background="images/footer-bg.gif"><table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="whitetext">

      <tr>
        <td width="10" height="39" align="left" valign="top"></td>
        <td width="980" height="39" align="center" valign="middle"><a href="http://www.theukflights.com" class="smallwhitelinks">Home </a> | <a href="flights.aspx" class="smallwhitelinks">Flights</a> | <a href="Hoildays.aspx" class="smallwhitelinks"> Holidays </a> | <a href="Safi.aspx" class="smallwhitelinks"> Safi</a> | <a href="travelinfo.aspx" class="smallwhitelinks">Travel info</a> | <a href="privacypolicy.aspx" class="smallwhitelinks">Privacy Policy</a>  |  <a href="termsandconditions.aspx" class="smallwhitelinks">Terms and Conditions</a>  | <a href="contactus.aspx" class="smallwhitelinks">Contact Us</a>  |  <a href="#" class="smallwhitelinks"> Sitemap</a>  |  <a href="contactus.aspx" class="smallwhitelinks"> FAQ</a> |<br />
          <span class="smallwhitetext">The UK Flights © 2008. All Rights Reserved. </span></td>
        <td width="10" height="39" align="left" valign="top"></td>
      </tr>
      
      
    </table></td>
    <td width="5%" height="39" align="left" valign="top" background="images/footer-bg.gif"></td>
  </tr>
</table>
 <script type="text/javascript" language="javascript" src="livehelp/include/javascript.php"></script>
    </form>
    
  </body>
  <script type="text/javascript">
      (function (i, s, o, g, r, a, m) {
          i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
              (i[r].q = i[r].q || []).push(arguments)
          }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
      })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

      ga('create', 'UA-43884104-1', 'theukflights.co.uk');
      ga('send', 'pageview');

</script>
</html>
