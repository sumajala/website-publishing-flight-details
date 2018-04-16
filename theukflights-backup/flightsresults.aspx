<%@ Page Title="" Language="C#" MasterPageFile="~/theukflights.master" AutoEventWireup="true" CodeFile="flightsresults.aspx.cs" Inherits="flightsresults" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/cal.css" rel="stylesheet" type="text/css" />
   
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
	font-size: 18px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
	letter-spacing: -1px;
}
.small-black-color-font:hover{
	font-family: "Helvetica Neue";
	font-size: 18px;
	font-weight: bold;
	color: #FFFFFF;
	text-decoration: none;
	letter-spacing: -1px;
	text-decoration:underline;
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

/*hello*/

.confirm-dialog { 
    background-color:Transparent;
    MARGIN: 0px auto;WIDTH: 500px;PADDING-TOP: 14px; 
    POSITION: relative;
            top: 0px;
            left: 0px;
        }
.confirm-dialog .inner { 
    PADDING-RIGHT: 20px;PADDING-LEFT: 20px; 
    PADDING-BOTTOM: 11px;background-color:Transparent; 
    FLOAT: left;MARGIN: 0px 0px -20px 0px;WIDTH: 460px;PADDING-TOP: 0px;
} 


    
.modalBackground {
    background-color:Gray;filter:alpha(opacity=70);opacity:0.7;
} 

   /*AutoComplete flyout */
.autocomplete_completionListElement 
{  
	margin : 0px!important;
	background-color : inherit;
	color : windowtext;
	border : buttonshadow;
	border-width : 1px;
	border-style : solid;
	cursor : 'default';
	overflow : auto;
	height :auto;
	width:150px;
	padding-left:0px;
	font-family:Tahoma;
	font-size:small;
   
    
    list-style-type : none;
}

/* AutoComplete highlighted item */

.autocomplete_highlightedListItem
{
    background-color: #0066FF;
    color:White;
    padding: 1px;
}

/* AutoComplete item */

.autocomplete_listItem 
{
	background-color :Transparent;
	color :Gray;
	padding : 1px;
}
   .page_enabled, .page_disabled
        {
            display: inline-block;
            height: 25px;
            min-width: 25px;
            line-height: 25px;
            text-align: center;
            text-decoration: none;
            border: 1px solid #ccc;
        }
        .page_enabled
        {
            background-color: #eee;
            color: #000;
        }
        .page_disabled
        {
            background-color: #6C6C6C;
            color: #fff !important;
        }

</style>

 <script type="text/javascript">
     function MouseHover() {
         $find("modelPopupExtender1").show();
     }
</script>
 <script type="text/javascript">
     function ClientItemSelectedsd1ap(sender, e) {
         $get("<%=hf_sd1_arrivalAirportId.ClientID %>").value = e.get_value();
     }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    
    <tr>
        <td>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" class="maintableborder">
  <tr>
    <td width="10" height="10" align="left" valign="middle"></td>
    <td height="10" colspan="2" align="left" valign="middle"></td>
    <td width="11" height="10" align="left" valign="middle"></td>
  </tr>
  <tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td height="10" colspan="2" align="left" valign="middle"><table width="977" border="0" cellspacing="0" cellpadding="0">
      <tr align="left" valign="middle">
        <td width="10" height="33" background="images/Booking-Engine/Blue-line.gif"></td>
        <td width="704" background="images/Booking-Engine/Blue-line.gif" class="whitebold-Font">Flight search results</td>
        <td width="47"><img src="images/Booking-Engine/Corner-bg.gif" width="47" height="33" /></td>
        <td width="107" height="33" align="right"><a href="#">
            <%-- <asp:Button ID="Button1" runat="server" Text="Button" CommandName="Save"/>--%></a></td>
        <td width="107" height="33" align="right">
             <asp:HyperLink ID="HyperLink1" runat="server" 
               onmouseover="MouseHover();"> <asp:ImageButton ID="btnshow" 
                runat="server" ImageUrl="images/Booking-Engine/change-search.gif" />
</asp:HyperLink> 
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BehaviorID="modalPopupExtender1" 
                   TargetControlID="HyperLink1"
                   PopupControlID="popUpPanel" 
                   OkControlID="imgsearch" 
                   BackgroundCssClass="modalBackground" >
            </asp:ModalPopupExtender>
        
        </td>
      </tr>
    </table></td>
    <td width="11" height="10" align="left" valign="middle" class="h1"></td>
  </tr>
  <tr valign="bottom">
    <td width="10" height="5" align="left" valign="top"></td>
    <td width="10" height="5" align="left" valign="top"></td>
    <td width="963" height="5" align="left" >
        
      
       
        &nbsp;</td>
    <td width="11" height="5" align="left"></td>
  </tr>
  <tr>
    <td width="10" height="10" align="left" valign="middle"></td>
    <td height="10" colspan="2" align="left" valign="middle"></td>
    <td width="11" height="10" align="left" valign="middle"></td>
  </tr>
    <tr>
    <td height="10" align="left" valign="middle"></td>
    <td height="10" colspan="2" align="left" valign="top"><table width="977" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="977" height="10" align="left" valign="top">
            <%-- <asp:Label ID="Label11" runat="server" Text=<%#Convert.ToInt32(Eval("OSAdultFare"))*Convert.ToInt32(Eval("OSChildFare"))%> Visible="true"/>--%>
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
             <ItemTemplate>
              <table width="977" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="59" height="30" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font">Flights</td><td width="519" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font"></td>
            <td width="352" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" class="small-black-color-font">Flight Total price incl. of taxes and fees  <asp:Label ID="lbladultfare" runat="server" Text='<%# Eval("OSAdultFare") %>' Visible="false"/> <asp:Label ID="lblchildfare" runat="server" Text='<%# Eval("OSChildFare") %>' Visible="false"/> <asp:Label ID="lblinfantfare" runat="server" Text='<%# Eval("OSInfantFare") %>' Visible="false"/>
              &pound; <asp:Label ID="lblTotalprice" runat="server" Text=""></asp:Label>
              <%-- <asp:Label ID="Label11" runat="server" Text=<%#Convert.ToInt32(Eval("OSAdultFare"))*Convert.ToInt32(Eval("OSChildFare"))%> Visible="true"/>--%></td>

            <td width="47" align="right" valign="middle"><img src="images/Booking-Engine/Corner-bg.gif" width="47" height="33" /></td>
          </tr>
          <tr>
            <td height="10" colspan="4" align="left" valign="middle" bgcolor="#E6F6FB"><table width="977" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle">
                  <td width="9" height="10"></td>
                  <td height="10" colspan="11"></td>
                  <td width="12" height="10"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30"></td>
                  <td width="22" height="30" align="left"><img src="images/Booking-Engine/small-flight.gif" width="21" height="20" /></td>
                  <td width="9" height="30"></td>
                  <td width="40" height="30" class="bluetext">Depart</td>
                  <td width="19" height="30" class="bluetext"></td>
                  <td width="32" height="30" class="bluetext"> <asp:Label ID="lbl_Sid1Depttime" runat="server" Text='<%#Eval("Sid1DepartTime")%>'></asp:Label></td>
                  <td width="19" height="30" class="bluetext"></td>
                  <td width="160" height="30" class="blackboldtext2">  <asp:Label ID="lbl_Sid1Deptdate" runat="server" Text='<%#Eval("Sid1DeptDateSelect","{0: d MMMM yyyy, dddd}")%>' Visible="true"></asp:Label></td>
                  <td width="20" height="30" class="blackboldtext2"></td>
                  <td width="317" height="30" class="blackboldtext2">
                      <asp:Label ID="lbl_Sid1DepartureAirport" runat="server" Text='<%#Eval("Sid1DepartAirportName1")%>'></asp:Label>,
                         <asp:Label ID="lblSid1_DeparturefromPlace" runat="server"  Text='<%#Eval("Sid1DepartAirportName")%>'></asp:Label>
                    </td>
                  <td width="264" height="30" align="center" class="smallorangcolortext"><asp:Label ID="lbl_Sid1DAirlinename" runat="server" Text='<%# Eval("Sid1AirlineName") %>'></asp:Label></td>
                  <td width="142" height="30" align="left" class="blackboldtext2">
                  
                    <asp:Label ID="lbl_Sid1DAircode" runat="server" Text='<%# Eval("Sid1Airlinecode") %>'></asp:Label>
               
                <asp:Label ID="lbl_Sid1FlightNo" runat="server" Text='<%# Eval("Sid1FlightNo") %>'></asp:Label>
                 </td>
                  <td width="12" height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30" class="bluetext">Arrive</td>
                  <td height="30"></td>
                  <td height="30" class="bluetext"> <asp:Label ID="lbl_Sid1Arrivaltime" runat="server" Text='<%# Eval("Sid1ArrivalTime") %>'></asp:Label></td>
                  <td height="30"></td>
                  <td  width="160" height="30" class="blackboldtext2"> <asp:Label ID="lbl_Sid1Arrivaldate" runat="server" Text='<%# Eval("Sid1ArrivalDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></td>
                  <td width="20" height="30"></td>
                  <td height="30" class="blackboldtext2">
                   <asp:Label ID="lbl_Sid1Arrivalairport" runat="server" Text='<%# Eval("Sid1ArrivalAirportName1") %>'></asp:Label>,
                  <asp:Label ID="lbl_Sid1Arrivalplace" runat="server" Text='<%# Eval("Sid1ArrivalAirportName") %>'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                  
                  </asp:Label></td>
                  <td height="30" align="center" class="blackboldtext2"></td>
                  <td height="30" align="left" class="blackboldtext2">Economy</td>
                  <td width="12" height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30" bgcolor="#B9DDF4"></td>
                  <td height="30" colspan="11" align="left" bgcolor="#B9DDF4" class="smallorangcolortext">
                      Stop over of
                      <asp:Label ID="lbl_stopover1" runat="server"></asp:Label>
                      &nbsp;hours in 
                   <asp:Label ID="Label2" runat="server" Text='<%# Eval("Sid1ArrivalAirportName1") %>'></asp:Label>,
                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Sid1ArrivalAirportName") %>'></asp:Label>
                  
                  <br /></td>
                  <td width="12" height="30" bgcolor="#B9DDF4"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="5"></td>
                  <td height="5" colspan="11"></td>
                  <td width="12" height="5"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext">Depart</span></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext"><asp:Label ID="lbl_Sid2Depttime" runat="server" Text='<%# Eval("Sid2DepartTime") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td width="160" height="30"><span class="blackboldtext2"><asp:Label ID="lbl_Sid2Deptdate" runat="server" Text='<%# Eval("Sid2DeptDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td height="30"><span class="blackboldtext2">
                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Sid2DepartAirportName1") %>'></asp:Label>,
                  <asp:Label ID="lblSid2_DeparturefromPlace" runat="server" Text='<%# Eval("Sid2DepartAirportName") %>'></asp:Label>
                  </span></td>
                  <td height="30" align="center"><span class="smallorangcolortext"> <asp:Label ID="lbl_Sid2DAirlinename" runat="server" Text='<%# Eval("Sid2AirlineName") %>'></asp:Label></span></td>
                  <td height="30" class="blackboldtext2"> <asp:Label ID="lbl_Sid2DAircode" runat="server" Text='<%# Eval("Sid2Airlinecode") %>'></asp:Label>
              
                <asp:Label ID="lbl_Sid2DAirNo" runat="server" Text='<%# Eval("Sid2FlightNo") %>'></asp:Label> </td>
                  <td height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext">Arrive</span></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext"> <asp:Label ID="lbl_Sid2Arrivaltime" runat="server" Text='<%# Eval("Sid2ArrivalTime") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td width="160" height="30"><span class="blackboldtext2"> <asp:Label ID="lbl_Sid2Arrivaldate" runat="server" Text='<%# Eval("Sid2ArrivalDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td height="30" class="blackboldtext2">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sid2ArrivalAirportName1") %>'></asp:Label>,
                  <asp:Label ID="lbl_Sid3RArrivalplace" runat="server" Text='<%# Eval("Sid2ArrivalAirportName") %>'></asp:Label>
                    
                  </td>
                  <td height="30" align="center"></td>
                  <td height="30" class="blackboldtext2">Economy</td>
                  <td height="30"></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="10" colspan="4" align="left" valign="middle" bgcolor="#E6F6FB"><table width="977" border="0" cellspacing="0" cellpadding="0">
                <tr align="left" valign="middle" bgcolor="#B9DDF4">
                  <td width="9" height="10"></td>
                  <td height="10" colspan="11"></td>
                  <td width="12" height="10"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30"></td>
                  <td width="22" height="30" align="left"><img src="images/Booking-Engine/small-flights-2.gif" width="21" height="20" /></td>
                  <td width="9" height="30"></td>
                  <td width="40" height="30" class="bluetext">Depart</td>
                  <td width="19" height="30" class="bluetext"></td>
                  <td width="32" height="30" class="bluetext">  <asp:Label ID="lbl_Sid3RDepttime" runat="server" Text='<%# Eval("Sid3RDepartTime") %>'></asp:Label> </td>
                  <td width="19" height="30" class="bluetext"></td>
                  <td width="160" height="30" class="blackboldtext2"> <asp:Label ID="lbl_Sid3RDeptdate" runat="server" Text='<%# Eval("Sid3RDeptDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></td>
                  <td width="20" height="30" class="blackboldtext2"></td>
                  <td width="317" height="30" class="blackboldtext2"> <asp:Label ID="Label6" runat="server" Text='<%# Eval("Sid3DepartAirportName1") %>'></asp:Label>, <asp:Label ID="lblSid3_RDeparturefromPlace" runat="server" Text='<%# Eval("Sid3DepartAirportName") %>'></asp:Label></td>
                  <td width="264" height="30" align="center" class="smallorangcolortext">
                  <asp:Label ID="lbl_RSid3DAirlinename" runat="server" Text='<%# Eval("Sid3RAirlineName") %>'></asp:Label></td>
                  <td width="142" height="30" align="left" class="blackboldtext2">  
                   <asp:Label ID="lbl_Sid3RDAircode" runat="server" Text='<%# Eval("Sid3RAirlinecode") %>'></asp:Label>
                <asp:Label ID="lbl_Sid3RDAirNo" runat="server" Text='<%# Eval("Sid3RFlightNo") %>'></asp:Label> </td>
                  <td width="12" height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30" class="bluetext">Arrive</td>
                  <td height="30"></td>
                  <td height="30" class="bluetext">  <asp:Label ID="lbl_Sid3RArrivaltime" runat="server" Text='<%# Eval("Sid3RArrivalTime") %>'></asp:Label></td>
                  <td height="30"></td>
                  <td width="160" height="30" class="blackboldtext2"> <asp:Label ID="lbl_Sid3RArrivaldate" runat="server" Text='<%# Eval("Sid3RArrivalDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></td>
                  <td width="20" height="30"></td>
                  <td height="30" class="blackboldtext2"> <asp:Label ID="Label7" runat="server" Text='<%# Eval("Sid3ArrivalAirportName1") %>'></asp:Label>, <asp:Label ID="lblSid3RArrivalAirportname" runat="server" Text='<%# Eval("Sid3ArrivalAirportName") %>'></asp:Label></td>
                  <td height="30" align="center" bgcolor="#E6F6FB" class="blackboldtext2"></td>
                  <td height="30" align="left" class="blackboldtext2">Economy</td>
                  <td width="12" height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="30" bgcolor="#B9DDF4"></td>
                  <td height="30" colspan="11" align="left" bgcolor="#B9DDF4" class="smallorangcolortext">Stop over of 06 hours 10 Minutes in 
<asp:Label ID="Label8" runat="server" Text='<%# Eval("Sid3ArrivalAirportName1") %>'></asp:Label>,
<asp:Label ID="Label4" runat="server" Text='<%# Eval("Sid3ArrivalAirportName") %>'></asp:Label><br /></td>
                  <td width="12" height="30" bgcolor="#B9DDF4"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td width="9" height="5"></td>
                  <td height="5" colspan="11"></td>
                  <td width="12" height="5"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext">Depart</span></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext"><asp:Label ID="lbl_Sid4RDepttime" runat="server" Text='<%# Eval("Sid4RDepartTime") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td width="160" height="30"><span class="blackboldtext2"><asp:Label ID="lbl_Sid4RDeptdate" runat="server" Text='<%# Eval("Sid4RDeptDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td height="30"><span class="blackboldtext2"> <asp:Label ID="Label9" runat="server" Text='<%# Eval("Sid4DepartAirportName1") %>'></asp:Label>,   <asp:Label ID="lblSid4_RDeparturefromPlace" runat="server" Text='<%# Eval("Sid4DepartAirportName") %>'></asp:Label></span></td>
                  <td height="30" align="center"><span class="smallorangcolortext"> <asp:Label ID="lbl_RSid4DAirlinename" runat="server" Text='<%# Eval("Sid4RAirlineName") %>'></asp:Label></span></td>
                  <td height="30" class="blackboldtext2"><asp:Label ID="lbl_Sid4RDAircode" runat="server" Text='<%# Eval("Sid4Airlinecode") %>'></asp:Label> <asp:Label ID="lbl_Sid4RDAirNo" runat="server" Text='<%# Eval("Sid4RFlightNo") %>'></asp:Label></td>
                  <td height="30"></td>
                </tr>
                <tr align="left" valign="middle">
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext">Arrive</span></td>
                  <td height="30"></td>
                  <td height="30"><span class="bluetext"> <asp:Label ID="lbl_Sid4RArrivaltime" runat="server" Text='<%# Eval("Sid4RArrivalTime") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td width="160" height="30"><span class="blackboldtext2"><asp:Label ID="lbl_Sid4RArrivaldate" runat="server" Text='<%# Eval("Sid4RArrivalDateSelect","{0: d MMMM yyyy, dddd}") %>'></asp:Label></span></td>
                  <td height="30"></td>
                  <td height="30" class="blackboldtext2">
                  <asp:Label ID="Label10" runat="server" Text='<%# Eval("Sid4ArrivalAirportName1") %>'></asp:Label>,
                  <asp:Label ID="lbl_Sid4RArrivalplace" runat="server" Text='<%# Eval("Sid4ArrivalAirportName") %>'></asp:Label></td>
                  <td height="30" align="center"></td>
                  <td height="30" class="blackboldtext2">Economy</td>
                  <td height="30"></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="33" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB"><img src="images/Booking-Engine/corner-bg1.gif" width="47" height="33" /></td>
            <td height="33" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB"></td>
            <td height="33" align="right" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB"><table width="334" border="0" cellspacing="0" cellpadding="0">
                <tr align="right" valign="middle">
                  <td width="164" height="33"></td>
                  <td width="94" height="33"><a href="#"></a></td>
                  <td width="76" height="33" align="right">
                     <%-- <asp:Button ID="Button1" runat="server" Text="Button" CommandName="Save"/>--%>

                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/Booking-Engine/Book now.png"  CommandName="Save"/>
                    </td>
                </tr>
                
            </table></td>
            <td height="33" align="left" valign="middle" background="images/Booking-Engine/Blue-line.gif" bgcolor="#E6F6FB">
                &nbsp;</td>
          </tr>
        </table>
        <br />
         <asp:Label ID="lbl_Adult" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_child" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_infant" runat="server" Text="" Visible="false"></asp:Label>
                  <asp:Label ID="AdultFare" runat="server" Text="" Visible="false"></asp:Label>
                   <asp:Label ID="ChildFare" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:Label ID="InfantFare" runat="server" Text="" Visible="false"></asp:Label>
             </ItemTemplate>
            </asp:DataList>
            <div style="width: 657px;"> 
<div style = "margin:1px; margin-left:10px;">
    <asp:Repeater ID="rptPager" runat="server">
        <ItemTemplate>
            <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                CssClass='<%# Convert.ToBoolean(Eval("Enabled")) ? "page_enabled" : "page_disabled" %>'
                OnClick="Page_Changed" OnClientClick='<%# !Convert.ToBoolean(Eval("Enabled")) ? "return false;" : "" %>'></asp:LinkButton>
        </ItemTemplate>
    </asp:Repeater>
    </div>
 <asp:Label ID="lblmessage" runat="server" Visible="False" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3300"></asp:Label>
</div> 
             
          </td>
      </tr>
      <tr>
        <td width="977" height="10" align="left" valign="top"></td>
      </tr>
      </table></td>
    <td height="10" align="left" valign="middle"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="middle"></td>
    <td height="5" colspan="2" align="left" valign="top">
        
      
       

        
      
       
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:Panel ID="popUpPanel" runat="server" CssClass="confirm-dialog">
<div class="inner">

   <table width="469" border="0" align="left" cellpadding="0" cellspacing="0" class="bluebordercolor">
  <tr>
    <td height="30" colspan="3" align="left" valign="top" bgcolor="#256AA6"><table width="467" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="420" height="30" align="left" valign="middle" bgcolor="#256AA6" class="whiteboldtext">Search and book Worldwide Flights</td>
        <td width="37" height="30" align="right" valign="middle" bgcolor="#256AA6"><img src="images/small-flights.gif" width="37" height="22" /></td>
        <td width="10" height="30" align="left" valign="middle" bgcolor="#256AA6"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="10" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="20" align="left" valign="top"></td>
    <td width="447" align="left" valign="top"><table width="447" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="82" height="20" align="left" valign="middle"><strong>Type of flight</strong></td>
        <td width="343" height="20" align="left" valign="middle">
          <asp:RadioButtonList ID="rbtn_one_return" runat="server" RepeatDirection="Horizontal"
                                                    ForeColor="#333333" TextAlign="Left" 
                  Width="170px" AutoPostBack="True" 
                  OnSelectedIndexChanged="rbtn_one_return_SelectedIndexChanged">
                                                    <asp:ListItem Value="R" Selected="True">Return</asp:ListItem>
                                                    <asp:ListItem Value="O">One Way</asp:ListItem>
                                                </asp:RadioButtonList>
          </td>
        <td width="22" height="20" align="left" valign="middle"></td>
      </tr>
    </table></td>
    <td width="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="20" align="left" valign="top"></td>
    <td height="20" align="left" valign="top"><table width="447" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="220" height="20" align="left" valign="middle"><strong>Flying from: <span class="smalltext">e.g. London etc.</span></strong></td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td width="220" height="20" align="left" valign="middle"><strong>Flying to: </strong></td>
      </tr>
      <tr>
        <td width="220" height="20" align="left" valign="top">
          <label>
           <asp:DropDownList ID="fly_ddlst" runat="server" TabIndex="1" Width="172px">
                   <asp:ListItem Value="421">Belfast International</asp:ListItem>
                                                <asp:ListItem Value="423">Birmingham</asp:ListItem>
                                                <asp:ListItem Value="424">Bristol</asp:ListItem>
                                                <asp:ListItem Value="425">Cardiff</asp:ListItem>
                                                <asp:ListItem Value="426">Edinburgh</asp:ListItem>
                                                <asp:ListItem Value="427">Glasgow International</asp:ListItem>
                                                <asp:ListItem Value="432">Leeds Bradford</asp:ListItem>
                                                <asp:ListItem Value="433">London City</asp:ListItem>
                                                <asp:ListItem Value="434">London Gatwick</asp:ListItem>
                                                <asp:ListItem Value="435" Selected="True">London Heathrow</asp:ListItem>
                                                <asp:ListItem Value="437">Manchester</asp:ListItem>
                                                <asp:ListItem Value="438">Newcastle</asp:ListItem>
                                                <asp:ListItem Value="427">Glasgow Prestwick</asp:ListItem>
                                                <asp:ListItem Value="440">Southampton</asp:ListItem>
                </asp:DropDownList>
            </label>
        </td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="220" height="20" align="left" valign="top">
              <asp:TextBox ID="txt_flight_to" runat="server" placeholder="Destination" 
                    autocomplete="off" ClientIDMode="Static" ></asp:TextBox>
                <asp:AutoCompleteExtender ID="txt_flight_to_AutoCompleteExtender" 
                    runat="server" TargetControlID="txt_flight_to" BehaviorID="AutoCompleteEx" 
                    ServiceMethod="GetCountries" MinimumPrefixLength="2" CompletionInterval="50" 
                    CompletionSetCount="2" 
                    CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                    DelimiterCharacters=";,:" ShowOnlyCurrentWordInCompletionListItem="true" 
                    OnClientItemSelected="ClientItemSelectedsd1ap">
    <Animations>
                    <OnShow>
                        <Sequence>
                            <%-- Make the completion list transparent and then show it --%>
                            <OpacityAction Opacity="0" />
                            <HideAction Visible="true" />
                            
                            <%--Cache the original size of the completion list the first time
                                the animation is played and then set it to zero --%>
                            <ScriptAction Script="
                                // Cache the size and setup the initial size
                                var behavior = $find('AutoCompleteEx');
                                if (!behavior._height) {
                                    var target = behavior.get_completionList();
                                    behavior._height = target.offsetHeight - 2;
                                    target.style.height = '0px';
                                }" />
                            
                            <%-- Expand from 0px to the appropriate size while fading in --%>
                            <Parallel Duration=".4">
                                <FadeIn />
                                <Length PropertyKey="height" StartValue="0" EndValueScript="$find('AutoCompleteEx')._height" />
                            </Parallel>
                        </Sequence>
                    </OnShow>
                    <OnHide>
                        <%-- Collapse down to 0px and fade out --%>
                        <Parallel Duration=".4">
                            <FadeOut />
                            <Length PropertyKey="height" StartValueScript="$find('AutoCompleteEx')._height" EndValue="0" />
                        </Parallel>
                    </OnHide>
             </Animations>
</asp:AutoCompleteExtender>
        </td>
      </tr>
    </table></td>
    <td height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="5" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="20" align="left" valign="top"></td>
    <td height="20" align="left" valign="top"><table width="447" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><strong>Departure Date</strong> <span class="smalltext">MM/DD/YYYY </span></td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td height="20" colspan="2" align="left" valign="middle"><strong>Return Date</strong><span class="smalltext"> MM/DD/YYYY </span></td>
      </tr>
      <tr>
        <td width="185" height="20" align="left" valign="top">
          <label>
          <asp:TextBox ID="txt_flight_depart" runat="server" autocomplete="off"></asp:TextBox>
                <asp:CalendarExtender ID="txt_flight_depart_CalendarExtender" runat="server" 
                    TargetControlID="txt_flight_depart" Format="yyyy-MM-dd" CssClass="cal_Theme1">
                </asp:CalendarExtender>
         
            </label>
        </td>
        <td width="31" align="left" valign="middle"><img src="images/calendar.gif" alt="cal" width="20" height="20" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="185" height="20" align="left" valign="top">
          <label>

             <asp:TextBox ID="txt_flight_return" runat="server" autocomplete="off"></asp:TextBox>
                <asp:CalendarExtender ID="txt_flight_return_CalendarExtender" runat="server" 
                    TargetControlID="txt_flight_return" Format="yyyy-MM-dd" CssClass="cal_Theme1">
                </asp:CalendarExtender>
            </label>
       </td>
        <td width="35" align="left" valign="middle"><img src="images/calendar.gif" alt="cal" width="20" height="20" /></td>
      </tr>
    </table></td>
    <td height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top"><table width="447" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="220" height="20" align="left" valign="middle"><strong> ClassType:</strong> </td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td width="220" height="20" align="left" valign="middle"><table width="219" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="219" height="20" align="left" valign="middle"><strong>Adult:</strong></td>
            <td width="219" height="20" align="left" valign="middle"><strong>Child:</strong></td>
            <td width="219" height="20" align="left" valign="middle"><strong>Infant:</strong></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="220" height="20" align="left" valign="middle">
          <label>
              <asp:DropDownList ID="Classtype_DropDownList" runat="server" style="width:163px;">
                    <asp:ListItem Value="Y" selected="True">Economic</asp:ListItem>
                    <%-- <asp:ListItem Value="F">First</asp:ListItem>
                    <asp:ListItem Value="C">Business</asp:ListItem>--%>
                </asp:DropDownList>
            </label>
        </td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td width="220" height="20" align="left" valign="middle">
        <table width="219" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="219" height="20" align="left" valign="middle">
            <asp:DropDownList ID="Adult_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList></td>
            <td width="219" height="20" align="left" valign="middle">
         <asp:DropDownList ID="Child_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList></td>
            <td width="219" height="20" align="left" valign="middle">
        <asp:DropDownList ID="Infant_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top">
 </td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="16" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="20" align="left" valign="top"></td>
    <td height="20" align="right" valign="top" >
        <asp:ImageButton ID="imgsearch" runat="server" 
            ImageUrl="~/images/seasrch-btn.gif" onclick="imgsearch_Click"/>
    <asp:HiddenField ID="hf_sd1_arrivalAirportId" runat="server" />
    <div class="base">

<%--<asp:LinkButton ID="LinkButton1" runat="server" CssClass="close" 
OnClientClick="$find('modelPopupExtender1').hide(); return false;"/>--%>
</div>
    
    </td>
    <td height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="15" colspan="3" align="left" valign="top"></td>
  </tr>
</table>


</div>
</asp:Panel>
        </ContentTemplate>
        </asp:UpdatePanel>
  
       </td>
    <td height="10" align="left" valign="middle"></td>
  </tr>
  </table>
        </td>
    </tr>
     <asp:Label ID="lblDestinationfrom" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_codedf" runat="server" Text="" Visible="false"></asp:Label>
         <asp:Label ID="lbl_codedtf" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_dest_to" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="Lbl_depdate" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lblrdate" runat="server" Text="" Visible="false"></asp:Label>
             <asp:Label ID="lbl_Adult" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_child" runat="server" Text="" Visible="false"></asp:Label>
                 <asp:Label ID="lbl_infant" runat="server" Text="" Visible="false"></asp:Label>
</asp:Content>

