<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search_search"  EnableEventValidation="true"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/cal.css" rel="stylesheet" type="text/css" runat="server" />
    <link href="css/ui-lightness/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.10.3.custom.js" type="text/javascript"></script>
     
   <script type="text/javascript">
       $(document).ready(function () {
           SearchText();
       });
       function SearchText() {
           $(".autosuggest").autocomplete({
               source: function (request, response) {
                   $.ajax({
                       type: "POST",
                       contentType: "application/json; charset=utf-8",
                       url: "search.aspx/GetAutoCompleteData",
                       data: "{'username':'" + document.getElementById('TextBox1').value + "'}",
                       dataType: "json",
                       success: function (data) {
                           response(data.d);
                       },
                       error: function (result) {
                           alert("Error");
                       }
                   });
               }
           });
       }
	</script>
    <style type="text/css">

.whiteboldtext{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
	line-height: 28px;
	text-indent: 10px;
}
.bluebordercolor{
	border: 1px solid #3677B7;
	background-image: url(../images/search-bg-slider.gif);
	background-repeat: repeat-x;
	background-color: #e6f6fb;
	background-position: left top;
}
    .style1
    {
        width: 100px;
        float: left;
        height: 10px;
   
    }
    .style4
    {
        width: 126px;
    }
    
  
    .style2
    {
        width: 100%;
        float: left;
        height: 10px;
        border-color: #c0c0c0;
        border-width: 0;
        
    }
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
              </asp:ToolkitScriptManager>
       
    
    </div>
  <div style="width: 282px; height: 490px; margin-top: 0px;">
<br />
    <table class="style1">
        <tr>
            <td height="10" width="100">
                &nbsp;</td>
            <td height="10" class="style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Width="100px" Visible="False"></asp:Label>
            </td>
            <td height="10" width="100">
                &nbsp;</td>
            <td height="10" width="100">
                &nbsp;</td>
            <td height="10" width="100">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label5" runat="server" Text="Jounery Type :"></asp:Label>
                </strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:RadioButtonList ID="rbtn_one_return" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="rbtn_one_return_SelectedIndexChanged" >
                    <asp:ListItem>OneWay</asp:ListItem>
                    <asp:ListItem Selected="True">Return</asp:ListItem>
                </asp:RadioButtonList>
                </strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <strong>
                <label>
                <asp:Label ID="Label6" runat="server" Text="Flying from:"></asp:Label>
                </label>
                </strong></td>
            <td>
                <label>
                <asp:DropDownList ID="fly_ddlst" runat="server" TabIndex="1" Width="130px">
                    <asp:ListItem Value="ABZ">Aberdeen</asp:ListItem>
                    <asp:ListItem Value="BFS">Belfast International</asp:ListItem>
                    <asp:ListItem Value="BHD">Belfast City</asp:ListItem>
                    <asp:ListItem Value="BHX">Birmingham</asp:ListItem>
                    <asp:ListItem Value="BOH">Bournemouth</asp:ListItem>
                    <asp:ListItem Value="BRS">Bristol</asp:ListItem>
                    <asp:ListItem Value="CWL">Cardiff</asp:ListItem>
                    <asp:ListItem Value="EDI">Edinburgh</asp:ListItem>
                    <asp:ListItem Value="EMA">East Midlands</asp:ListItem>
                    <asp:ListItem Value="EXT">Exeter</asp:ListItem>
                    <asp:ListItem Value="GCI">Guernsey</asp:ListItem>
                    <asp:ListItem Value="GLA">Glasgow International</asp:ListItem>
                    <asp:ListItem Value="HUY">Humberside</asp:ListItem>
                    <asp:ListItem Value="INV">Inverness</asp:ListItem>
                    <asp:ListItem Value="IOM">Isle of Man</asp:ListItem>
                    <asp:ListItem Value="JER">Jersey</asp:ListItem>
                    <asp:ListItem Value="LBA">Leeds Bradford</asp:ListItem>
                    <asp:ListItem Value="LCY">London City</asp:ListItem>
                    <asp:ListItem Value="LGW">London Gatwick</asp:ListItem>
                    <asp:ListItem Value="LHR" Selected="True">London Heathrow</asp:ListItem>
                    <asp:ListItem Value="LON">London (All)</asp:ListItem>
                    <asp:ListItem Value="LPL">Liverpool</asp:ListItem>
                    <asp:ListItem Value="LTN">London Luton</asp:ListItem>
                    <asp:ListItem Value="MAN">Manchester</asp:ListItem>
                    <asp:ListItem Value="MME">Teesside</asp:ListItem>
                    <asp:ListItem Value="NCL">Newcastle</asp:ListItem>
                    <asp:ListItem Value="NWI">Norwich</asp:ListItem>
                    <asp:ListItem Value="PIK">Glasgow Prestwick</asp:ListItem>
                    <asp:ListItem Value="PLH">Plymouth</asp:ListItem>
                    <asp:ListItem Value="SOU">Southampton</asp:ListItem>
                    <asp:ListItem Value="STN">London Stansted</asp:ListItem>
                    <asp:ListItem Value="SZD">Sheffield</asp:ListItem>
                </asp:DropDownList>
                </label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <strong>
                <label>
                <asp:Label ID="Label7" runat="server" Text="Flying to:"></asp:Label>
                </label>
                </strong></td>
            <td>
                <label>              
                <asp:TextBox ID="TextBox1" class="autosuggest" runat="server" 
                    ValidationGroup="Search" AutoCompleteType="Disabled"></asp:TextBox>           
             
                </label>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please Enter Your  Desitnation" 
                    ValidationGroup="Search" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <strong>
                <asp:Label ID="Label8" runat="server" Text="Depart Date :"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txt_depart_date" runat="server" AutoCompleteType="Disabled" 
                    CausesValidation="True"></asp:TextBox>

                <asp:TextBoxWatermarkExtender ID="txt_depart_date_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txt_depart_date" WatermarkText="DD-MM-YYYY"></asp:TextBoxWatermarkExtender>

       
                <asp:CalendarExtender ID="txt_depart_date_CalendarExtender" runat="server" 
                    TargetControlID="txt_depart_date" Format="dd-MM-yyyy" DefaultView="Days" OnClientDateSelectionChanged="Selected_DateFromDept" CssClass="cal_Theme1">
                </asp:CalendarExtender>

       
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_depart_date" PopupButtonID="ImageButton2" Format="dd-MM-yyyy" DefaultView="Days" OnClientDateSelectionChanged="Selected_DateFromDept" CssClass="cal_Theme1"></asp:CalendarExtender>
           
       
            </td>
           
            <td>
                                   <asp:ImageButton 
                                        ID="ImageButton2" runat="server" alt="cal" height="22" 
                                       width="22" ImageUrl="~/uiconnect/calendar.gif" />
           
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <strong>
                <asp:Label ID="Label9" runat="server" Text="Return Date :"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txt_return_date" runat="server" AutoCompleteType="Disabled" 
                    CausesValidation="True"></asp:TextBox>


                <asp:TextBoxWatermarkExtender ID="txt_return_date_TextBoxWatermarkExtender" 
                    runat="server" TargetControlID="txt_return_date" WatermarkText="DD-MM-YYYY"></asp:TextBoxWatermarkExtender>
 <script type="text/javascript">
     function Selected_DateFromDept(sender, args) {
         $find("<%=txt_return_date_CalendarExtender.ClientID %>").set_startDate(sender._selectedDate);
         $find("<%=CalendarExtender2.ClientID %>").set_startDate(sender._selectedDate);
     } </script>

                <asp:CalendarExtender ID="txt_return_date_CalendarExtender" runat="server" 
                    TargetControlID="txt_return_date" Format="dd-MM-yyyy" DefaultView="Days" CssClass="cal_Theme1"></asp:CalendarExtender>


                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txt_return_date" PopupButtonID="ImageButton1" Format="dd-MM-yyyy" DefaultView="Days" CssClass="cal_Theme1"></asp:CalendarExtender>
             

            </td>
            <td>
                                    <asp:ImageButton 
                                        ID="ImageButton1" runat="server" alt="cal" height="22" 
                                         width="22" ImageUrl="~/uiconnect/calendar.gif"/>
             
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>
                <asp:Label ID="Label10" runat="server" Text="Passengers Traveling:"></asp:Label>
                </strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <table align="left" class="style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label_adult" runat="server" Font-Bold="True" Text="Adult:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label_child" runat="server" Font-Bold="True" Text="Child:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label_infant" runat="server" Font-Bold="True" Text="Infant:"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <table align="left" class="style2">
                    <tr>
                        <td>
                            <asp:DropDownList ID="Adult_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="Child_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="Infant_DropDownList" runat="server" Width="40px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>Flight Preferences:</strong></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:RadioButtonList ID="rbtn_direct_cheap" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Direct Flight</asp:ListItem>
                    <asp:ListItem Selected="True">Cheapest Flights</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Class Type:"></asp:Label>
            </td>
        
            
            <td>
                <asp:DropDownList ID="Classtype_DropDownList" runat="server">
                    <asp:ListItem>Any One</asp:ListItem>
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Economic</asp:ListItem>
                    <asp:ListItem Value="Business">Business</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
               
             
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style4">
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                    DisplayMode="List" Font-Size="Small" ForeColor="#FF3300" 
                    HeaderText="Please correct the following:" ShowMessageBox="True"
                     ShowSummary="False" ValidationGroup="Search" Height="16px" Width="89px"/>
            </td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
             
         

                <asp:ImageButton ID="submit_ImageButton" runat="server"  
                    ImageUrl="~/uiconnect/SUBMIT.png" 
                    ValidationGroup="Search" Height="23px" 
                    onclick="submit_ImageButton_Click" />  
                   

            </td>
            <td>
              
  &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3">
     
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

</div>   
    </form>
</body>
</html>
