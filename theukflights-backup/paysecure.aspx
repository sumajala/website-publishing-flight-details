<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paysecure.aspx.cs" Inherits="paysecure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Page</title>
    <link href="css/paystyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
  <div id='container'>
  <div class='signup'>
     <h4>Payee Billing Address:</h4>
       <asp:textbox id="txt_Address" runat="server" placeholder='Card Holder Billing Address:' 
          TextMode="MultiLine" Height="70px" Width="240px"></asp:textbox>

      <asp:textbox id="txt_name" runat="server" placeholder='Card Holder Name:' 
          ForeColor="Black"></asp:textbox>
    
      <asp:dropdownlist runat="server" id="ddlCardtype" Height="35px" Width="240px">
       <asp:ListItem>Select Card Type</asp:ListItem>
          <asp:ListItem Selected="True">Credit Card</asp:ListItem>
          <asp:ListItem>DebitCard</asp:ListItem>
      </asp:dropdownlist>
       <asp:textbox id="txt_cardno" runat="server" placeholder='Card Number:' 
          ForeColor="Black" MaxLength="16"></asp:textbox>
     
       <asp:DropDownList ID="ddl_em" runat="server"  Height="35px" Width="115px" >
                        <asp:ListItem>Expiry Month</asp:ListItem>
                        <asp:ListItem>01-Jan</asp:ListItem>
                        <asp:ListItem>02-Feb</asp:ListItem>
                        <asp:ListItem>03-March</asp:ListItem>
                        <asp:ListItem>04-April</asp:ListItem>
                        <asp:ListItem>05-May</asp:ListItem>
                        <asp:ListItem>06-June</asp:ListItem>
                        <asp:ListItem>07-July</asp:ListItem>
                         <asp:ListItem>08-Aug</asp:ListItem>
                        <asp:ListItem>09-Sept</asp:ListItem>
                        <asp:ListItem>10-Oct</asp:ListItem>
                        <asp:ListItem>11-Nov</asp:ListItem>
                        <asp:ListItem>12-Dec</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddl_ey" runat="server"  Height="35px" Width="115px">
                        <asp:ListItem>Expiry Year</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                    </asp:DropDownList>
 <br />
<br />
    <asp:textbox id="txt_expno" runat="server" placeholder='CVV Number:' 
          Height="35px" Width="240px" 
          TextMode="Password" MaxLength="4"></asp:textbox>

       
      <asp:button id="pay" runat="server" text="Pay Now" class="submit" onclick="pay_Click" 
         />
    
    
  </div>
  <div class='whysign'>
  <img src="images/payment/fd_print_logo.png" alt="firstdata" />  
  <img src="images/theukflights-logo.png" alt="firstdata" width="220" height="40" style=" margin-left:40px;" />
    <h3> Merchant :Theukflights ltd</h3>
    <h3>Booking Reference No:<asp:label id="Bookid" runat="server" text=""></asp:label></h3>
   
    <h3>Amount:<asp:label id="payamount" runat="server" text=""></asp:label></h3>
    <br />
    <br />
     <br />
    <br />
     <br />
    <br />
     <img src="images/payment/collectioncreditcardlogos.gif" alt="creditcards"  width="300" height="45"/>  
    <br />
   
    <h4 style=" font-size:small;">If You Have any Issue, Contact Us :0207 993 8474 , info@theukflights.com</h4>
   
  </div>
</div>

    </form>
</body>
</html>
