﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Deals/DealPage.master" AutoEventWireup="true" CodeFile="exclusive_deals_to_acapulco.aspx.cs" Inherits="Deals_exclusive_deals_to_acapulco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style3
        {
            height: 93px;
            width: 730px;
        }
        .style5
        {
            width: 105px;
        }
        .style10
        {
            height: 43px;
            width: 150px;
        }
        .style8
        {
            height: 43px;
            width: 122px;
        }
        .style6
        {
            height: 43px;
            width: 236px;
        }
        .style4
        {
            height: 43px;
        }
        .style3
        {
            height: 29px;
            width: 150px;
        }
        .style9
        {
            width: 122px;
            height: 29px;
        }
        .style7
        {
            width: 236px;
            height: 29px;
        }
        .style11
        {
            height: 29px;
        }
        .style1
        {
            width: 6px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <form id="form1" runat="server">
    <td>
  <tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td height="25" align="left" valign="middle" background="../images/Holidays/blue-gre.gif" class="whiteboldtext">Flights To Acapulco</td>
    <td width="10" height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="20" align="left" valign="top"></td>
    <td height="20" align="left" valign="top"><table width="978" border="0" 
            cellspacing="0" cellpadding="0" style="height: 520px">
      <tr>
        <td width="730" height="10" align="left" valign="top"></td>
        <td width="10" height="10" align="left" valign="top"></td>
        <td width="238" height="10" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="730" height="10" rowspan="4" align="left" valign="top"><table width="730" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="730" height="100" align="left" valign="top" >
        
        
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <ItemTemplate>
                      <div style="background-image: url('images/landing-page.gif'); background-repeat: no-repeat; height: 102px; width: 733px;">

             <table class="auto-style3">
                 <tr>
                     <td class="style5" rowspan="2">
                         &nbsp;&nbsp;
                         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                     </td>
                     <td class="style10">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label1" runat="server" Text="Departure"></asp:Label>
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                         <asp:Label ID="Label2" runat="server" class="bluetext"
                             Text='<%# Eval("Departure") %>' Font-Size="Small"></asp:Label>
                     </td>
                     <td class="style8">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label3" runat="server" Text="Arrival"></asp:Label>
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label4" runat="server" 
                             class="bluetext" Text='<%# Eval("Arrival") %>'></asp:Label>
                     </td>
                     <td class="style6">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label5" runat="server" Text="Travel Beetween"></asp:Label>
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label6" runat="server"
                             class="bluetext" Text='<%# Eval("Date") %>'></asp:Label>
                     </td>
                     <td class="style4">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True"  class="bluetext"
                             Text='<%# Eval("seats") %>'></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td class="style3">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" class="redboldtext" 
                             Text='<%# Eval("price") %>'></asp:Label>
                     </td>
                     <td class="style9">
                         </td>
                     <td class="style7">
                         </td>
                     <td class="style11">
                         &nbsp;&nbsp;
                         <table class="auto-style8">
                             <tr>
                                 <td class="style1">&nbsp; &nbsp;</td>
                                 <td>
                                     <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="images/booknow.gif" NavigateUrl='<%# Eval("Booknow") %>' Text='<%# Eval("Booknow") %>'></asp:HyperLink>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     
                 </tr>
             </table>
                        
           </div>
       
                    </ItemTemplate>
                </asp:DataList>
                </td>
          </tr>
          <tr>
            <td width="730" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="730" height="10" align="left" valign="top">
                &nbsp;</td>
          </tr>
          <tr>
            <td width="730" height="10" align="left" valign="top">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheUKflightsConnectionString %>" SelectCommand="SELECT * FROM [Flights to Acapulco]"></asp:SqlDataSource>
                </td>
          </tr>
          <tr>
            <td width="730" height="10" align="left" valign="top"></td>
          </tr>
        </table></td>
        <td width="10" height="10" rowspan="4" align="left" valign="top"></td>
        <td width="238" height="10" align="left" valign="top"><table width="238" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="4" colspan="4" align="left" valign="middle" bgcolor="97d2f7"></td>
          </tr>
          <tr>
            <td width="10" height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td colspan="2" align="left" valign="middle" bgcolor="e9f5fe" class="h1">More Destinations in Acapulco</td>
            <td width="10" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td width="10" height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td width="208" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">1. Munnar</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">2. Manali</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">3. Hampi</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">4. Goa</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">5. Udaipur</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">6. Gangtok</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"><a href="#" class="destinationslink">7. Bangalore</a></td>
            <td height="28" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
            <td height="1" colspan="2" align="left" valign="middle" bgcolor="#97D2F7"></td>
            <td height="1" align="left" valign="middle" bgcolor="e9f5fe"></td>
          </tr>
          <tr>
            <td height="4" colspan="4" align="left" valign="middle" bgcolor="97d2f7"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="238" height="10" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="238" height="10" align="left" valign="top"><a href="#"><img src="../images/Inner-Live-Chat.gif" alt="inner live chat" width="238" height="60" border="0" /></a></td>
      </tr>
      <tr>
        <td height="10" align="left" valign="top"></td>
      </tr>
    </table></td>
    <td height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top" background="../images/small-line.gif"></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  
    </td>
  
    </form>
  
</asp:Content>

