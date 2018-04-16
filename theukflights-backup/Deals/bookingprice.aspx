<%@ Page Title="" Language="C#" MasterPageFile="~/Deals/DealPage.master" AutoEventWireup="true" CodeFile="bookingprice.aspx.cs" Inherits="Deals_bookingprice" EnableViewState="true" EnableEventValidation="true"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form id="form1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td>
      
                                        <hr />
                                        <br />
      
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            Text="Travel Request :"></asp:Label>
                    
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td colspan="3" rowspan="2">
                                                    
                                                    <iframe frameborder="0" src="../search/book.aspx" 
                                                        style="height: 314px; width: 923px; overflow:hidden;" scrolling="no" runat="server">
                                                    </iframe>
                                                    
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                    
                            <br />
                            <hr />
                    
    </form>
</asp:Content>

