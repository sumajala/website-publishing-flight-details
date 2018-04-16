<%@ Page Title="" Language="C#" MasterPageFile="~/theukflights.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <tr>
    <td width="28" height="30" align="left" valign="top"></td>
    <td height="30" colspan="5" align="left" valign="top"></td>
    <td width="1" height="30" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="28" height="20" align="left" valign="top"></td>
    <td width="394" height="20" align="left" valign="top"><table width="394" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="394" height="20" align="left" valign="top"><img src="images/sign-top.gif" width="394" height="53" /></td>
      </tr>
      <tr>
        <td width="394" height="20" align="left" valign="top" background="images/sign-in-middle.gif"><table width="394" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="20" height="5" align="left" valign="middle"></td>
              <td height="5" colspan="2" align="left" valign="middle"></td>
              <td width="20" height="5" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="20" align="left" valign="middle"></td>
              <td height="25" colspan="2" align="left" valign="middle"><strong>User Name:</strong></td>
              <td width="20" height="20" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="30" align="left" valign="middle"></td>
              <td width="274" height="35" align="left" valign="middle" background="images/user-name.gif"><table width="274" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="28" height="35" align="left" valign="top"></td>
                    <td width="236" height="35" align="left" valign="middle"><form id="form1" name="form1" method="post" action="">
                        <label>
                         <asp:TextBox ID="username" runat="server"></asp:TextBox>
                        </label>
                    </form></td>
                    <td width="10" height="35" align="left" valign="top"></td>
                  </tr>
              </table></td>
              <td width="80" align="left" valign="middle"></td>
              <td width="20" height="30" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="25" align="left" valign="middle"></td>
              <td height="25" colspan="2" align="left" valign="middle"><strong>Password:</strong></td>
              <td width="20" height="25" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="35" align="left" valign="middle"></td>
              <td height="35" align="left" valign="middle" background="images/password.gif"><table width="274" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="28" height="35" align="left" valign="top"></td>
                    <td width="236" height="35" align="left" valign="middle"><form id="form2" name="form1" method="post" action="">
                        <label>
                        <asp:TextBox runat="server" ID="username2"></asp:TextBox>
                        </label>
                    </form></td>
                    <td width="10" height="35" align="left" valign="top"></td>
                  </tr>
              </table></td>
              <td height="35" align="left" valign="middle"></td>
              <td width="20" height="35" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="35" align="left" valign="middle"></td>
              <td height="35" colspan="2" align="left" valign="middle"><table width="354" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="114" height="30" align="left" valign="middle"><form id="form3" name="form3" method="post" action="">
                        <label>
                        <input type="checkbox" name="checkbox" id="checkbox" />
                        </label>
                      Remenber me
                    </form></td>
                    <td width="10" height="30" align="left" valign="middle"></td>
                    <td width="230" height="30" align="left" valign="middle"><a href="#" class="bluetext">
                      <label></label>
                      Forgot Password </a></td>
                  </tr>
              </table></td>
              <td width="20" height="35" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="5" align="left" valign="middle"></td>
              <td height="5" colspan="2" align="left" valign="middle"></td>
              <td width="20" height="5" align="left" valign="middle"></td>
            </tr>
            <tr>
              <td width="20" height="30" align="left" valign="middle"></td>
              <td height="30" colspan="2" align="left" valign="middle"><a href="#"><asp:Button ID="btnLogin" runat="server" Text="LogIn" Height="29px" Width="79px" BackColor="#009900" ForeColor="#FFFFCC" style="font-weight: 700" /></a></td>
              <td width="20" height="30" align="left" valign="middle"></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td width="394" height="10" align="left" valign="top"><img src="images/sign-bottom.gif" width="394" height="11" /></td>
      </tr>
      <tr>
        <td width="394" height="20" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="394" height="20" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="394" height="20" align="left" valign="top"></td>
      </tr>
    </table></td>
    <td width="1" align="left" valign="top"></td>
    <td width="30" align="left" valign="top"></td>
    <td width="514" align="left" valign="top"><table width="514" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="514" height="20" align="left" valign="middle"><img src="images/register-bg.gif" width="514" height="53" /></td>
      </tr>
      <tr>
        <td width="514" height="20" align="left" valign="middle" background="images/devider.gif"><table width="514" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20" height="10" align="left" valign="middle"></td>
            <td height="10" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="10" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="left" valign="middle"><table width="473" border="0" cellspacing="0" cellpadding="0">
              <tr valign="middle">
                <td width="1" height="20" align="left"></td>
                <td width="70" align="left"><strong>Title:*</strong></td>
                <td width="1" align="left"></td>
                <td width="243" height="20" align="left">
                 <asp:DropDownList ID="ddltitle" runat="server">
                     <asp:ListItem>Mr.</asp:ListItem>
                     <asp:ListItem>Mrs</asp:ListItem>
                     <asp:ListItem>Master</asp:ListItem>
                     <asp:ListItem>Miss</asp:ListItem>
                 </asp:DropDownList>
                </td>
                <td width="172" height="20" align="left"></td>
              </tr>
            </table></td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="10" align="left" valign="middle"></td>
            <td height="10" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="10" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="25" align="left" valign="middle"></td>
            <td height="25" colspan="2" align="left" valign="middle"><table width="473" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="70" height="25" align="left" valign="middle"><strong>First Name:</strong></td>
                <td width="160" height="25" align="left" valign="middle" background="images/bg-form.gif"><form id="form4" name="form4" method="post" action="">
                  <label>
                    <asp:TextBox runat="server" ID="txtfirstname"></asp:TextBox>
                    </label>
                </form>                </td>
                <td width="13" height="25" align="left" valign="middle"></td>
                <td width="70" height="25" align="left" valign="middle"><strong>Last  Name:</strong></td>
                <td width="160" align="left" valign="middle" background="images/bg-form.gif"><form id="form5" name="form4" method="post" action="">
                  <label>
                   <asp:TextBox ID="txtlastneme" runat="server"></asp:TextBox>
                  </label>
                </form></td>
              </tr>
            </table></td>
            <td width="21" height="25" align="left" valign="middle"></td>
          </tr>
          <tr valign="bottom">
            <td width="20" height="30" align="left"></td>
            <td width="86" height="30" align="left"></td>
            <td width="387" height="30" align="left" class="smalltext"><strong>Tip:</strong> Make sure the names match the traveler's passport or driving license to avoid travel delays<br /></td>
            <td width="21" height="30" align="left"></td>
          </tr>
          <tr>
            <td width="20" height="5" align="left" valign="middle"></td>
            <td height="5" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="5" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="left" valign="middle"><table width="469" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="70" height="25" align="left" valign="middle"><strong>E Mail:</strong></td>
                <td width="160" height="25" align="left" valign="middle" background="images/bg-form.gif"><form id="form6" name="form4" method="post" action="">
                  <label>
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                  </label>
                </form></td>
                <td width="10" height="25" align="left" valign="middle"></td>
                <td width="230" height="25" align="left" valign="middle" class="smalltext"><form id="form7" name="form7" method="post" action="">
                  <label>
                    <input type="checkbox" name="checkbox2" id="checkbox2" />
                    </label>
                Special Offers, 
                </form>                </td>
              </tr>
            </table></td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="10" align="left" valign="middle"></td>
            <td height="10" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="10" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="left" valign="middle"><table width="473" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="70" height="25" align="left" valign="middle"><strong>Password:</strong></td>
                <td width="160" height="25" align="left" valign="middle" background="images/bg-form.gif"><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
                <td width="5" height="25" align="left" valign="middle"></td>
                <td width="81" height="25" align="left" valign="middle"><strong>Re Password:</strong></td>
                <td width="160" align="left" valign="middle" background="images/bg-form.gif"><form id="form9" name="form4" method="post" >
                    <label></label>
                    <asp:TextBox runat="server" ID="txtrepeatpassword"></asp:TextBox>
                </form></td>
              </tr>
            </table></td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td width="20" height="10" align="left" valign="middle"></td>
            <td height="10" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="10" align="left" valign="middle"></td>
          </tr><tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="left" valign="middle"><table width="473" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="70" height="25" align="left" valign="middle"><strong>Tel Number:</strong></td>
                <td width="160" height="25" align="left" valign="middle" background="images/bg-form.gif"><form id="form8" name="form4" method="post" action="">
                    <label>
                    <asp:TextBox runat="server" ID="txtTelephone"></asp:TextBox>
                    </label>
                </form></td>
                <td width="81" height="25" align="left" valign="middle"></td>
                <td width="54" height="25" align="left" valign="middle"></td>
                <td width="108" align="left" valign="middle"></td>
              </tr>
            </table></td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr><tr>
            <td width="20" height="10" align="left" valign="middle"></td>
            <td height="10" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="10" align="left" valign="middle"></td>
          </tr><tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="center" valign="middle"><label>
            <input type="checkbox" name="checkbox3" id="checkbox3" />
            </label>
I have read and agree to the <a href="http://www.theukflights.com/termsandconditions.html">Terms of Use</a> and the <a href="http://www.theukflights.com/privacypolicy.html">Privacy Policy</a>. </td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr><tr>
            <td width="20" height="15" align="left" valign="middle"></td>
            <td height="15" colspan="2" align="left" valign="middle"></td>
            <td width="21" height="15" align="left" valign="middle"></td>
          </tr><tr>
            <td width="20" height="20" align="left" valign="middle"></td>
            <td height="20" colspan="2" align="center" valign="middle"><a href="#"><asp:Button ID="btncreateaccount" runat="server" Text="Create My Account" BackColor="#009900" ForeColor="#FFFFCC" OnClick="btncreateaccount_Click" /></a></td>
            <td width="21" height="20" align="left" valign="middle"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="514" height="20" align="left" valign="middle"><img src="images/reg-btm.gif" width="514" height="20" /></td>
      </tr>
      <tr>
        <td width="514" height="20" align="left" valign="middle"></td>
      </tr>
    </table></td>
    <td width="30" align="left" valign="top"></td>
    <td width="1" height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="28" height="10" align="left" valign="top"></td>
    <td height="10" colspan="5" align="left" valign="top" background="images/small-line.gif"></td>
    <td width="1" height="10" align="left" valign="top"></td>
  </tr>
</asp:Content>

