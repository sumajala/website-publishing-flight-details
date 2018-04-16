<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="search_book" %>

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
                       url: "book.aspx/GetAutoCompleteData",
                       data: "{'username':'" + document.getElementById('txt_flyingto').value + "'}",
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


</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        

        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
   
                                                    <table cellspacing="1" cellpadding="4" rules="all" class="passtable" border="0" 
                                                        width="75%" style="border-style: ridge; border-color: #1A6A85;">
	<thead>
		 <tr>
         	<th colspan="3" style="background-color: #3F82AA"><span style="color: #FFFFFF">Contact Details</span></th>
            <th style="margin-bottom:10px;margin-top:10px;margin-right:45px;font-size:12px;font-weight:bold;color:#fff;text-align:right; background-color: #2274A3;"> 
			The fields marked with <span style="color:#fff;font-weight:bold;">*</span> are mandatory.
            </th>
         </tr>
    </thead>
    <tbody>
    <tr>
      <td class="FieldTitle" align="left" >First Name </td>
      <td align="left">
          <asp:TextBox ID="txt_firstname" runat="server" ValidationGroup="contact" 
              AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="txt_firstname" ErrorMessage="Enter your first name" 
              ValidationGroup="contact">*</asp:RequiredFieldValidator>
        </td>
      <td class="FieldTitle" align="left" >Last Name </td>
      <td align="left">
          <asp:TextBox ID="txt_lastname" runat="server" ValidationGroup="contact" 
              AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="txt_lastname" ErrorMessage="Enter your last name" 
              ValidationGroup="contact">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="left" class="FieldTitle" >Phone</td>
      <td align="left">
          <asp:TextBox ID="txt_phone" runat="server" ValidationGroup="contact" 
              AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ControlToValidate="txt_phone" ErrorMessage="Enter your phone no" 
              ValidationGroup="contact">*</asp:RequiredFieldValidator>
        </td>
      <td align="left" class="FieldTitle" >Email </td>
      <td align="left">
          <asp:TextBox ID="txt_email" runat="server" ValidationGroup="contact" 
              AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="txt_email" ErrorMessage="Enter your Email address" 
              ValidationGroup="contact">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
              ControlToValidate="txt_email" ErrorMessage="Enter correct email address" 
              ValidationGroup="contact" 
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Journey Type:</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                RepeatDirection="Horizontal">
                <asp:ListItem>OneWay</asp:ListItem>
                <asp:ListItem Selected="True">Return</asp:ListItem>
            </asp:RadioButtonList>
        </td>
      <td align="left" class="FieldTitle" colspan="2" >Prefer&nbsp; airlines:&nbsp;
          <asp:TextBox ID="txt_preairline" runat="server" style="margin-left: 10px" 
              AutoCompleteType="Disabled"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td align="left" class="FieldTitle" >Flying From:</td>
      <td align="left">
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
              <asp:ListItem Selected="True" Value="LHR">London Heathrow</asp:ListItem>
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
        </td>
      <td align="left" class="FieldTitle" >Flying To:</td>
      <td align="left">
          <asp:TextBox ID="txt_flyingto" class="autosuggest" runat="server" 
              ValidationGroup="contact" AutoCompleteType="Disabled"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ControlToValidate="txt_flyingto" ErrorMessage="Flying to" 
              ValidationGroup="contact">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
      <td align="left" class="FieldTitle" >Dept Date:</td>
      <td align="left">
          <asp:TextBox ID="txt_depdate" runat="server" AutoCompleteType="Disabled" 
              CausesValidation="True"></asp:TextBox>
          <asp:TextBoxWatermarkExtender ID="txt_depdate_TextBoxWatermarkExtender" 
              runat="server" TargetControlID="txt_depdate" WatermarkText="DD-MM-YYYY"></asp:TextBoxWatermarkExtender>
          <asp:CalendarExtender ID="txt_depdate_CalendarExtender" runat="server" Format="dd-MM-yyyy" DefaultView="Days"
              TargetControlID="txt_depdate" OnClientDateSelectionChanged="Selected_DateFromDept" CssClass="cal_Theme1">
          </asp:CalendarExtender>
        </td>
    <script type="text/javascript">
        function Selected_DateFromDept(sender, args) {
    $find("<%=txt_arrdate_CalendarExtender.ClientID %>").set_startDate(sender._selectedDate);
} </script>

      <td align="left" class="FieldTitle" >Return&nbsp; Date:</td>
      <td align="left">
          <asp:TextBox ID="txt_arrdate" runat="server" AutoCompleteType="Disabled" 
              CausesValidation="True"></asp:TextBox>
          <asp:TextBoxWatermarkExtender ID="txt_arrdate_TextBoxWatermarkExtender" 
              runat="server" TargetControlID="txt_arrdate" WatermarkText="DD-MM-YYYY">
          </asp:TextBoxWatermarkExtender>
          <asp:CalendarExtender ID="txt_arrdate_CalendarExtender" runat="server" Format="dd-MM-yyyy" DefaultView="Days"
              TargetControlID="txt_arrdate" CssClass="cal_Theme1">
          </asp:CalendarExtender>
        </td>
    </tr>
    <tr>
      <td align="left" colspan="4" class="smallblacktext">
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
              DisplayMode="List" HeaderText="Please Provide Details:" ShowMessageBox="True"  
              ValidationGroup="contact" ShowSummary="False" Width="150px" />
      	  <asp:Button ID="btn_submit" runat="server" Text="Submit" 
              ValidationGroup="contact" onclick="btn_submit_Click" 
              style="margin-left: 544px"/>
        </td>
    </tr>
    </tbody>
  </table>

                                                     
                                                    
    </div>
    </form>
</body>
</html>
