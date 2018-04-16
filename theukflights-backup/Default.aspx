﻿<%@ Page Title="" Language="C#" MasterPageFile="~/theukflights.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="css/CSSSheet.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
  <style type="text/css">
.style3 {
	font-size: small;
}
   #Img1 {
	margin-top: 0px;
}
/*AutoComplete flyout */
.autocomplete-suggestions { border: 1px solid #999; background: #FFF; overflow: auto; }
.autocomplete-suggestion { padding: 2px 5px; white-space: nowrap; overflow: hidden; }
.autocomplete-selected { background: #F0F0F0; }
.autocomplete-suggestions strong { font-weight: normal; color: #3399FF; }

.autocomplete_completionListElement {
	margin : 0px!important;
	background-color : inherit;
	color : windowtext;
	border : buttonshadow;
	border-width : 1px;
	border-style : solid;
	cursor : 'default';
	overflow : auto;
	height : auto;
	width: 150px;
	padding-left: 0px;
	font-family: Tahoma;
	font-size: small;
	list-style-type : none;
}
/* AutoComplete highlighted item */

.autocomplete_highlightedListItem {
	background-color: ButtonShadow;
	color: White;
	padding: 1px;
}
/* AutoComplete item */

.autocomplete_listItem {
	background-color : Transparent;
	color : Gray;
	padding : 1px;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.devbridge-autocomplete/1.2.7/jquery.devbridge-autocomplete.min.js" type="text/javascript"></script>
<script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/aes.js"></script>
<script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/pbkdf2.js"></script>
<script src="search/assets/js/codes.js" language="javascript"></script>
<script src="search/assets/js/secure.js" language="javascript"></script>
<script type="text/javascript">
	function ClientItemSelectedsd1ap(sender, e) {
		$get("<%=hf_sd1_arrivalAirportId.ClientID %>").value = e.get_value();
	}
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> </asp:ToolkitScriptManager>
  <tr>
    <td height="10" colspan="2" align="left" valign="top"></td>
    <td width="10" height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="20" align="left" valign="top"></td>
    <td width="320" align="left" valign="top"><table width="320" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="320" height="20" align="left" valign="top"><table width="320" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="320" height="30" align="left" valign="middle" background="images/Holiday-pannel.gif" class="whiteboldtext">Search and book Worldwide Flights</td>
              </tr>
              <tr>
                <td width="320" height="20" align="left" valign="top" background="images/search-bg-slider.gif" class="bluebordercolor">
                	<div style="display:none">
                    <table width="318" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="10" height="10" align="left" valign="top"></td>
                          <td width="298" height="10" align="left" valign="top"></td>
                          <td width="10" height="10" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="20" align="left" valign="top"></td>
                          <td height="20" align="left" valign="middle"><strong>Type of flight</strong></td>
                          <td width="10" height="20" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="20" align="left" valign="top"></td>
                          <td height="20" colspan="2" align="left" valign="top">
                          <asp:RadioButtonList ID="rbtn_one_return" runat="server" RepeatDirection="Horizontal" ForeColor="#333333" TextAlign="Left"  Width="170px" AutoPostBack="True"  
                            OnSelectedIndexChanged="rbtn_one_return_SelectedIndexChanged">
                              <asp:ListItem Value="R" Selected="True">Return</asp:ListItem>
                              <asp:ListItem Value="O">One Way</asp:ListItem>
                            </asp:RadioButtonList>
                          </td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="90" height="25" align="left" valign="middle"><strong>Flying from: </strong></td>
                                <td width="208" height="25" align="left" valign="middle"><label>
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
                                  </label></td>
                                <td width="10" height="25" align="left" valign="middle"></td>
                              </tr>
                            </table></td>
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="90" height="25" align="left"><strong>Flying to: </strong></td>
                                <td width="208" height="25"><asp:TextBox ID="txt_flight_to" runat="server" placeholder="Destination" 
                        autocomplete="off" ClientIDMode="Static"  ></asp:TextBox>
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
                                  </asp:AutoCompleteExtender></td>
                                <td width="10" height="25" align="left" valign="middle"><label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Destination " ControlToValidate="txt_flight_to" 
                        ValidationGroup="Search">*</asp:RequiredFieldValidator>
                                  </label></td>
                              </tr>
                            </table></td>
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="190" height="25" align="left" valign="middle"><strong>Depart Date:</strong></td>
                                <td width="110" height="25" align="left" valign="middle"><label> 
                                    <script type="text/javascript">
                        function Selected_DateFromDept(sender, args) {
                            $find("<%=txt_flight_return_CalendarExtender.ClientID %>").set_startDate(sender._selectedDate);
        
                        } </script>
                                    <asp:TextBox ID="txt_flight_depart" runat="server" autocomplete="off" 
                        ToolTip="YYYY-DD-MM" placeholder="YYYY-DD-MM"></asp:TextBox>
                                    <asp:CalendarExtender ID="txt_flight_depart_CalendarExtender" runat="server" 
                        TargetControlID="txt_flight_depart" Format="yyyy-MM-dd" CssClass="cal_Theme1" DefaultView="Days" OnClientDateSelectionChanged="Selected_DateFromDept"> </asp:CalendarExtender>
                                  </label></td>
                                <td width="90" align="left" valign="middle">&nbsp;&nbsp;
                                  <%--<img src="images/calendar.gif" 
                        alt="cal" width="20" height="20" />--%></td>
                                <td width="10" height="25" align="left" valign="middle"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_flight_depart" ErrorMessage="Please Enter Depart Date" 
                        ValidationGroup="Search">*</asp:RequiredFieldValidator></td>
                              </tr>
                            </table></td>
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="190" height="25" align="left" valign="middle"><strong>Return Date:</strong></td>
                                <td width="110" height="25" align="left" valign="middle"><label> 
                                    <script type="text/javascript">
                       function Selected_DateFromDept(sender, args) {
                           $find("<%=txt_flight_return_CalendarExtender.ClientID %>").set_startDate(sender._selectedDate);
        
                       } </script>
                                    <asp:TextBox ID="txt_flight_return" runat="server" autocomplete="off" 
                        ToolTip="YYYY-DD-MM" placeholder="YYYY-DD-MM"></asp:TextBox>
                                    <asp:CalendarExtender ID="txt_flight_return_CalendarExtender" runat="server" 
                        TargetControlID="txt_flight_return" Format="yyyy-MM-dd" DefaultView="Days" CssClass="cal_Theme1"> </asp:CalendarExtender>
                                  </label></td>
                                <td width="90" align="left" valign="middle">&nbsp;&nbsp;
                                  <%--<img src="images/calendar.gif" 
                        alt="cal" width="20" height="20" />--%></td>
                                <td width="10" height="25" align="left" valign="middle"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txt_flight_return" ErrorMessage="Please Enter Return Date " 
                        ValidationGroup="Search">*</asp:RequiredFieldValidator></td>
                              </tr>
                            </table></td>
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="85" height="25" align="left" valign="middle"><strong>Adult:</strong></td>
                                <td width="85" height="25" align="left" valign="middle"><strong>Child:</strong></td>
                                <td width="128" height="25" align="left" valign="middle"><strong>Infant:</strong></td>
                              </tr>
                              <tr>
                                <td width="85" height="25" align="left" valign="top"><label>
                                    <asp:DropDownList ID="Adult_DropDownList" runat="server" Width="40px">
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                    </asp:DropDownList>
                                  </label></td>
                                <td width="85" height="25" align="left" valign="top"><asp:DropDownList ID="Child_DropDownList" runat="server" Width="40px">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                  </asp:DropDownList></td>
                                <td height="25" align="left" valign="top"><asp:DropDownList ID="Infant_DropDownList" runat="server" Width="40px">
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
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" align="left" valign="top"></td>
                          <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="25" colspan="2" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                                    <tr valign="bottom">
                                      <td width="298" height="30" align="left" valign="middle"><strong> ClassType:</strong></td>
                                      <td width="298" height="30" align="left" valign="middle"><label>
                                          <asp:DropDownList ID="Classtype_DropDownList" runat="server" style="width:163px;">
                                            <asp:ListItem Value="Y" selected="True">Economic</asp:ListItem>
                                            <%-- <asp:ListItem Value="F">First</asp:ListItem>
                        <asp:ListItem Value="C">Business</asp:ListItem>--%>
                                          </asp:DropDownList>
                                        </label></td>
                                      <td width="298" height="30" align="left"></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table></td>
                          <td width="10" height="28" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td width="10" height="28" rowspan="2" align="left" valign="top"></td>
                          <td height="10" align="right" valign="middle"></td>
                          <td width="10" height="28" rowspan="2" align="left" valign="top"></td>
                        </tr>
                        <tr>
                          <td height="14" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td width="184" height="25" align="center" valign="middle" ><a href="#"></a></td>
                                <td width="81" height="25" align="right" valign="top"><asp:ImageButton ID="submit_ImageButton" runat="server"  
                        ImageUrl="images/seasrch-btn.gif" 
                        ValidationGroup="Search" width="90" height="25" border="0" 
                        onclick="submit_ImageButton_Click"/></td>
                                <asp:HiddenField ID="hf_sd1_arrivalAirportId" runat="server" />
                                <td width="33" height="25" align="left" valign="top"></td>
                              </tr>
                            </table>
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                        DisplayMode="List" Font-Size="Small" ForeColor="#FF3300" 
                        HeaderText="Please correct the following:" ShowMessageBox="True"
                         ShowSummary="False" ValidationGroup="Search" Height="16px" Width="89px"/></td>
                        </tr>
                        <tr>
                          <td width="10" height="10" align="left" valign="top"></td>
                          <td height="10" align="left" valign="middle"></td>
                          <td width="10" height="10" align="left" valign="top"></td>
                        </tr>
                      </table>
                    </div>
                    <!--PHP Search Area-->

                    <form id="frmlist" name="frmlist" enctype="multipart/form-data" method="post">
                        <input type="hidden" name="serverDate" id="serverDate" value="" />
                        <input type="hidden" name="is" value="0" />
                        
                        <table width="318" cellspacing="0" cellpadding="0" border="0">
                          <tbody><tr>
                            <td width="10" valign="top" height="10" align="left"></td>
                            <td width="298" valign="top" height="10" align="left"></td>
                            <td width="10" valign="top" height="10" align="left"></td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="20" align="left"></td>
                            <td valign="middle" height="20" align="left"><strong>Type of flight</strong></td>
                            <td width="10" valign="top" height="20" align="left"></td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="20" align="left"></td>
                            <td valign="top" height="20" align="left" colspan="2">
                    
                                <table border="0" style="color:#333333;width:170px;">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <label for="ReturnJourney">Return</label>
                                                <input type="radio" value="return" name="btnTrip" id="ReturnJourney" onclick="DisableReturnFun();" />
                                            </td>
                                            <td>
                                                <label for="OneWay">One Way</label>
                                                <input type="radio" value="oneway" name="btnTrip" id="OneWay" checked="checked" onclick="DisableReturnFun();" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                    
                              </td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="28" align="left"></td>
                            <td valign="middle" height="28" align="left">
                                <table width="298" cellspacing="0" cellpadding="0" border="0">
                    
                                  <tbody style="height:32px">
                                    <tr>
                                        <td width="100" valign="middle" align="left"><strong>Flying from: </strong></td>
                                        <td valign="middle" align="left">
                                            <input type="text" name="departure" id="departure" style="width:100%" value="" />
                                            <input type="hidden" name="depIATA" id="depIATA" value=""/>
                                       </td>
                                      </tr>
                                </tbody>
                    
                                <tbody style="height:32px">
                                    <tr>
                                        <td width="100" valign="middle" align="left"><strong>Flying to: </strong></td>
                                        <td valign="middle" align="left">
                                            <input type="text" name="destination" id="destination" style="width:100%;" value="" />
                                            <input type="hidden" name="destIATA" id="destIATA" value=""/>
                                        </td>
                                    </tr>
                                </tbody>
                    
                                <tbody style="height:32px">
                                    <tr>
                                        <td width="100" valign="middle" align="left"><strong>Depart Date: </strong></td>
                                        <td valign="middle" align="left">
                                            <input type="text" autocomplete="off" placeholder="mm/dd/yyyy" id="leave" name="leave" aria-required="true" style="width:80px;" />
                                        </td>
                                    </tr>
                                </tbody>
                    
                                <tbody style="height:32px;display:none" id="returnDiv">
                                    <tr>
                                        <td width="100" valign="middle" align="left"><strong>Return Date: </strong></td>
                                        <td valign="middle" align="left">
                                            <input type="text" autocomplete="off" placeholder="mm/dd/yyyy" id="return" name="return" aria-required="true" style="width:80px;" />
                                        </td>
                                    </tr>
                                </tbody>
                    
                    
                                </table>
                            </td>
                            <td width="10" valign="top" height="28" align="left"></td>
                          </tr>
                    
                          <tr>
                            <td width="10" valign="top" height="28" align="left"></td>
                            <td valign="middle" height="28" align="left"><table width="298" cellspacing="0" cellpadding="0" border="0">
                              <tbody><tr>
                                <td width="85" valign="middle" height="25" align="left"><strong>Adult:</strong></td>
                                <td width="85" valign="middle" height="25" align="left"><strong>Child:</strong></td>
                                <td width="128" valign="middle" height="25" align="left"><strong>Infant:</strong></td>
                              </tr>
                              <tr>
                                <td width="85" valign="top" height="25" align="left">
                                  <label>
                                    <select style="width:40px;" id="adult" name="adult">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                    </select>
                                    </label>
                               </td>
                                <td width="85" valign="top" height="25" align="left">
                                    <select style="width:40px;" id="child" name="child">
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </td>
                                <td valign="top" height="25" align="left">
                                   <select style="width:40px;" id="infant" name="infant">
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                    </select>
                                </td>
                              </tr>
                            </tbody></table></td>
                            <td width="10" valign="top" height="28" align="left"></td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="28" align="left"></td>
                            <td valign="middle" height="28" align="left"><table width="298" cellspacing="0" cellpadding="0" border="0">
                             
                              <tbody><tr>
                                <td valign="middle" height="25" align="left" colspan="2"><table width="298" cellspacing="0" cellpadding="0" border="0">
                                  <tbody><tr valign="bottom">
                                    <td width="298" valign="middle" height="30" align="left"><strong> ClassType:</strong></td>
                                    <td width="298" valign="middle" height="30" align="left">
                                      <label>
                                            <select class="icon_class valid" name="class" id="class" aria-invalid="false">
                                                <option selected="selected" value="0">Any</option>
                                                <option value="1">Economy</option>
                                                <option value="4">Premium Economy</option>
                                                <option value="2">Business class flights</option>
                                                <option value="3">First class</option>
                                            </select>                  
                                        </label>
                                    </td>
                                    <td width="298" height="30" align="left"></td>
                                  </tr>
                                </tbody></table></td>
                              </tr>
                            </tbody></table></td>
                            <td width="10" valign="top" height="28" align="left"></td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="28" align="left" rowspan="2"></td>
                            <td valign="middle" height="10" align="right"></td>
                            <td width="10" valign="top" height="28" align="left" rowspan="2"></td>
                          </tr>
                          <tr>
                            <td valign="middle" height="14" align="left"><table width="298" cellspacing="0" cellpadding="0" border="0">
                              <tbody><tr>
                                <td width="184" valign="middle" height="25" align="center"><a href="#"></a></td>
                                <td width="81" valign="top" height="25" align="right">
                                    <input type="image" border="0" style="height:25px;width:90px;border-width:0px;" src="http://www.theukflights.com/images/seasrch-btn.gif" id="btn" name="btn" 
                                    onclick="return doSearch();" />
                                </td>
                                <td width="33" valign="top" height="25" align="left"></td>
                              </tr>
                            </tbody></table>
                            <div style="color:#FF3300;font-size:Small;height:16px;width:89px;display:none;" id="ctl00_ContentPlaceHolder1_ValidationSummary2"></div>
                            </td>
                          </tr>
                          <tr>
                            <td width="10" valign="top" height="10" align="left"></td>
                            <td valign="middle" height="10" align="left"></td>
                            <td width="10" valign="top" height="10" align="left"></td>
                          </tr>
                        </tbody></table>
                        
                        <script type="text/javascript">
							$(document).ready(function(){
								var myDate = new Date();
								var leaveDate = myDate.toLocaleFormat('%m/%d/%Y');
								
								myDate.setMonth(myDate.getMonth() + 1);
								var returnDate = myDate.toLocaleFormat('%m/%d/%Y');
								$("#leave").val(leaveDate);
								$("#return").val(returnDate);
							});
						</script>
                    
                    </form>
                    
                    <!--PHP Search Area-->
				</td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td width="320" height="10" align="left" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td width="320" height="10" align="left" valign="top"><table width="320" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="320" height="49" align="left" valign="top" background="images/wekly-deals.gif"><table width="320" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="106" height="15" align="left" valign="top"></td>
                      <td width="116" height="15" align="left" valign="top"></td>
                      <td height="15" colspan="2" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="106" height="20" align="left" valign="top"></td>
                      <td width="116" height="20" align="left" valign="middle"><label>
                          <asp:TextBox ID="txt_weekdeal" runat="server"  
                        class="e-mailnews" 
                        ValidationGroup="week" Width="110px" BorderStyle="None" Height="14px" 
                        Wrap="False" ></asp:TextBox>
                          <asp:textboxwatermarkextender ID="TextBoxWatermarkExtender1" 
                        runat="server" TargetControlID="txt_weekdeal"  
    WatermarkText="* Email address *"> </asp:textboxwatermarkextender>
                        </label></td>
                      <td width="20" height="20" align="left" valign="top"></td>
                      <td width="78" align="left" valign="top"><a href="#">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="images/sign-up.gif" OnClick="ImageButton1_Click"  ValidationGroup="week"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_weekdeal" 
                        ErrorMessage="Please enter your email address" ValidationGroup="week">*</asp:RequiredFieldValidator>
                        </a></td>
                    </tr>
                    <tr>
                      <td width="106" height="15" align="left" valign="top"></td>
                      <td width="116" height="15" align="left" valign="top"></td>
                      <td height="15" colspan="2" align="left" valign="top"><a href="#">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        DisplayMode="List" ValidationGroup="week" Height="16px" ShowMessageBox="true" ShowSummary="false" />
                        </a></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="320" height="10" align="left" valign="top"></td>
              </tr>
              <tr>
                <td width="320" height="20" align="left" valign="top"><a href="javascript:;" target="_blank" onclick="openLiveHelp(); return false"><img src="images/Need-Help.gif" alt="NeedHelp With Your Booking" width="320" height="90" border="0" /></a><a href="#"></a></td>
              </tr>
              <tr>
                <td width="320" height="10" align="left" valign="top"></td>
              </tr>
              <tr>
                <td width="320" height="20" align="left" valign="top"><table width="320" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor">
                    <tr>
                      <td width="320" height="42" align="left" valign="top" background="images/Holiday-pannel.gif" bgcolor="#FFFFFF" class="whiteboldtext"> World Wide Holiday Packages</td>
                    </tr>
                    <tr>
                      <td height="10" align="left" valign="top" bgcolor="#FFFFFF"><table width="318" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="10" colspan="2" align="left" valign="top"></td>
                            <td width="10" height="10" align="left" valign="top"></td>
                            <td height="10" colspan="2" align="left" valign="top"></td>
                          </tr>
                          <tr>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td width="80" height="45" align="left" valign="top"><a href="#"><img src="images/Holidays/small-1.gif" alt="Thailand" width="80" height="45" border="0" /></a></td>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td colspan="2" align="left" valign="top"><table width="218" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="headernavigation">Thailand</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="smalltext">7 nights in Bangkok, Thailand</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="orangcolortext"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="10" align="left" valign="middle"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td width="10" height="10" align="left" valign="middle" background="images/small-line.gif"/>
                            <td width="208" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td width="10" align="left" valign="middle"></td>
                          </tr>
                          <tr>
                            <td height="45" align="left" valign="top"></td>
                            <td height="45" align="left" valign="top"><a href="#"><img src="images/Holidays/small-2.gif" alt="Indonesia" width="80" height="45" border="0" /></a></td>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td colspan="2" align="left" valign="top"><table width="218" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="headernavigation">Indonesia</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="smalltext">7 nights in Bali, Indonesia</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="orangcolortext"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="10" align="left" valign="middle"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle"></td>
                          </tr>
                          <tr>
                            <td height="45" align="left" valign="top"></td>
                            <td height="45" align="left" valign="top"><a href="#"><img src="images/Holidays/small-3.gif" alt="Malayasia" width="80" height="45" border="0" /></a></td>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td colspan="2" align="left" valign="top"><table width="218" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="headernavigation">Malaysia</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="smalltext">7 nights in Langkawi, Malaysia</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="orangcolortext"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="10" align="left" valign="middle"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle"></td>
                          </tr>
                          <tr>
                            <td height="45" align="left" valign="top"></td>
                            <td height="45" align="left" valign="top"><a href="#"><img src="images/Holidays/small-4.gif" alt="Dubai" width="80" height="45" border="0" /></a></td>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td colspan="2" align="left" valign="top"><table width="218" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="headernavigation">Dubai</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="smalltext">7 nights in Dubai, Middle East</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="orangcolortext"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                          <tr>
                            <td height="10" align="left" valign="middle"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle" background="images/small-line.gif"></td>
                            <td align="left" valign="middle"></td>
                          </tr>
                          <tr>
                            <td height="45" align="left" valign="top"></td>
                            <td height="45" align="left" valign="top"><a href="#"><img src="images/Holidays/small-5.gif" alt="Orlando" width="80" height="45" border="0" /></a></td>
                            <td width="10" height="45" align="left" valign="top"></td>
                            <td colspan="2" align="left" valign="top"><table width="218" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="headernavigation">Orlando </a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="smalltext">7 nights in Orlando, USA</a></td>
                                </tr>
                                <tr>
                                  <td width="218" height="15" align="left" valign="top"><a href="#" class="orangcolortext"></a></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr>
                      <td height="10" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td></td>
                    </tr>
                    <tr>
                      <td></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td width="320" height="10" align="left" valign="top"></td>
              </tr>
              <tr>
                <td width="320" height="10" align="left" valign="top"><table width="320" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor">
                    <tr>
                      <td height="42" colspan="4" align="left" valign="top" background="images/Holiday-pannel.gif" bgcolor="#FFFFFF" class="whiteboldtext"> theukflights.com advantages ?</td>
                    </tr>
                    <tr>
                      <td width="12" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                      <td width="35" height="20" align="left" valign="middle" bgcolor="#FFFFFF"><img src="images/Holidays/Right-mark.gif" width="34" height="25" /></td>
                      <td width="245" height="20" align="left" valign="middle" bgcolor="#FFFFFF" class="bluetext">Unique flight deals from leading airlines!</td>
                      <td width="26" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td width="12" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                      <td width="35" height="20" align="left" valign="middle" bgcolor="#FFFFFF"><img src="images/Holidays/Right-mark.gif" width="34" height="25" /></td>
                      <td width="245" height="20" align="left" valign="middle" bgcolor="#FFFFFF" class="bluetext">Quick and easy to book!</td>
                      <td width="26" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td width="12" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                      <td width="35" height="20" align="left" valign="middle" bgcolor="#FFFFFF"><img src="images/Holidays/Right-mark.gif" width="34" height="25" /></td>
                      <td width="245" height="20" align="left" valign="middle" bgcolor="#FFFFFF" class="bluetext">Huge selection of budget airlines &amp; cheap flights!</td>
                      <td width="26" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td width="12" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                      <td width="35" height="20" align="left" valign="middle" bgcolor="#FFFFFF"><img src="images/Holidays/Right-mark.gif" width="34" height="25" /></td>
                      <td width="245" height="20" align="left" valign="middle" bgcolor="#FFFFFF" class="bluetext">Unbeatable prices from more than 750 airlines!</td>
                      <td width="26" height="20" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td width="12" height="3" align="left" valign="top" bgcolor="#FFFFFF"></td>
                      <td width="35" height="3" align="left" valign="middle" bgcolor="#FFFFFF"></td>
                      <td width="245" height="3" align="left" valign="middle" bgcolor="#FFFFFF" class="bluetext"></td>
                      <td width="26" height="3" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td height="5" colspan="4" align="left" valign="top" bgcolor="#FFFFFF"></td>
                    </tr>
                    <tr>
                      <td colspan="4"></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td height="10" align="left" valign="top"></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
    <td width="10" height="20" align="left" valign="top"></td>
    <td width="651" height="20" align="left" valign="top">
    <table width="651" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="650" height="250" align="left" valign="top" bgcolor="#FFFFFF"><img src="images/banners/UK-Flights-Special-Offers.gif" 
                alt="cheap flights to uk" height="250" style="width: 640px" /></td>
        </tr>
        <tr>
          <td height="35" align="left" valign="middle" class="h1"><table width="651" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="333" height="35" align="left" valign="middle">Worldwide flight offers:</td>
                <td width="307" height="35" align="right" valign="middle"><img src="images/Taxes.gif" width="317" height="14" /></td>
                <td width="8" height="35" align="left" valign="middle"></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td width="650" height="20" align="left" valign="top"><table width="651" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="210" height="300" align="left" valign="top" background="images/img-pannel.gif"><table width="210" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="5" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="5" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/Flight.gif" alt="Flights offers" width="200" height="115" /></td>
                      <td width="5" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_melbourne.aspx" class="blackboldtext">Melbourne</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_melbourne.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_melbourne.aspx" class="orangcolortext">&pound;675</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_sydney.aspx" class="blackboldtext">Sydney</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_sydney.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_sydney.aspx" class="orangcolortext">&pound;760</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_cairns.aspx" class="blackboldtext">Cairns</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_cairns.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_cairns.aspx" class="orangcolortext">&pound;765</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_auckland.aspx" class="blackboldtext">Auckland</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_auckland.aspx"  class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_auckland.aspx" class="orangcolortext">&pound;845</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_perth.aspx" class="blackboldtext">Perth</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_perth.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_perth.aspx" class="orangcolortext">&pound;725</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_brisbane.aspx" class="blackboldtext">Brisbane</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_brisbane.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_brisbane.aspx" class="orangcolortext">&pound;765</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="63" height="20" align="left" valign="middle"></td>
                      <td width="137" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
                <td width="10" height="300" align="left" valign="top"></td>
                <td width="210" height="300" align="left" valign="top" background="images/img-pannel.gif"><table width="210" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="5" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="5" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/flight3.gif" alt="Flights" width="200" height="115" /></td>
                      <td width="5" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_manila.aspx" class="blackboldtext">Manila</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_manila.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_manila.aspx" class="orangcolortext">&pound;540</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_cebu.aspx" class="blackboldtext">Cebu</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_cebu.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_cebu.aspx" class="orangcolortext">&pound;640</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_bangkok.aspx" class="blackboldtext">Bangkok </a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_bangkok.aspx"  class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_bangkok.aspx" class="orangcolortext">&pound;450</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_hongkong.aspx" class="blackboldtext">Hong Kong</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_hongkong.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_hongkong.aspx" class="orangcolortext">&pound;500</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_kualalumpur.aspx" class="blackboldtext">Kuala Lumpur</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_kualalumpur.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_kualalumpur.aspx" class="orangcolortext">&pound;500</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_phuket.aspx" class="blackboldtext">Phuket</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_phuket.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_phuket.aspx"  class="orangcolortext">&pound;540</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="63" height="20" align="left" valign="middle"></td>
                      <td width="137" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
                <td width="11" align="left" valign="top"></td>
                <td width="210" align="left" valign="top" background="images/img-pannel.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="2%" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="1%" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/flight4.gif" alt="best flight offers" width="200" height="115" /></td>
                      <td width="2%" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="1%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_accra.aspx" class="blackboldtext">Accra</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_accra.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_accra.aspx" class="orangcolortext">&pound;480</a></td>
                          </tr>
                        </table></td>
                      <td width="2%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="1%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_lagos.aspx" class="blackboldtext">Lagos</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_lagos.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_lagos.aspx" class="orangcolortext">&pound;515</a></td>
                          </tr>
                        </table></td>
                      <td width="2%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="1%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="#" class="blackboldtext">Nairobi</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="#" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="#" class="orangcolortext">&pound;475</a></td>
                          </tr>
                        </table></td>
                      <td width="2%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_entebbe.aspx" class="blackboldtext">Entebbe</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_entebbe.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_entebbe.aspx" class="orangcolortext">&pound;515</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_capetown.aspx" class="blackboldtext">Cape Town</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_capetown.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_capetown.aspx"class="orangcolortext">&pound;640</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_dar-es-salaam.aspx" class="blackboldtext">Dar Es Salaam</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_dar-es-salaam.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_dar-es-salaam.aspx" class="orangcolortext">&pound;515</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="30%" height="20" align="left" valign="middle"></td>
                      <td width="67%" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td width="650" height="10" align="left" valign="top"></td>
        </tr>
        <tr>
          <td width="650" height="20" align="left" valign="top"><table width="651" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="210" height="300" align="left" valign="top" background="images/img-pannel.gif"><table width="210" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="5" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="5" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/Flight-1.gif" alt="Flights" width="200" height="115" /></td>
                      <td width="5" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_mumbai.aspx" class="blackboldtext">Mumbai</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_mumbai.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_mumbai.aspx" class="orangcolortext">&pound;445</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_dakar.aspx" class="blackboldtext">Dhaka </a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_dakar.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_dakar.aspx" class="orangcolortext">&pound;470</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_islamabad.aspx" class="blackboldtext">Islamabad</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_islamabad.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_islamabad.aspx"class="orangcolortext">&pound;476</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_kathmandu.aspx" class="blackboldtext">Kathmandu</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_kathmandu.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_kathmandu.aspx" class="orangcolortext">&pound;580</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_karachi.aspx" class="blackboldtext">Karachi</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_karachi.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_karachi.aspx"class="orangcolortext">&pound;476</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_hyderabad.aspx" class="blackboldtext">Hyderabad</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_hyderabad.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_hyderabad.aspx" class="orangcolortext">&pound;480</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="63" height="20" align="left" valign="middle"></td>
                      <td width="137" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
                <td width="10" height="300" align="left" valign="top"></td>
                <td width="210" height="300" align="left" valign="top" background="images/img-pannel.gif"><table width="210" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="5" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="5" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/flight5.gif" alt="cheap flights" width="200" height="115" /></td>
                      <td width="5" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_newyork.aspx" class="blackboldtext">New York</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_newyork.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_newyork.aspx" class="orangcolortext">&pound;415</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_boston.aspx" class="blackboldtext">Boston</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_boston.aspx"  class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_boston.aspx"  class="orangcolortext">&pound;450</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="5" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_chicago.aspx" class="blackboldtext">Chicago</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_chicago.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_chicago.aspx" class="orangcolortext">&pound;470</a></td>
                          </tr>
                        </table></td>
                      <td width="5" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_losangeles.aspx" class="blackboldtext">Los Angeles</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_losangeles.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_losangeles.aspx" class="orangcolortext">&pound;500</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_sanfrancisco.aspx" class="blackboldtext">San Francisco</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_sanfrancisco.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_sanfrancisco.aspx"class="orangcolortext">&pound;510</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_miami.aspx" class="blackboldtext">Miami</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_miami.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_miami.aspx" class="orangcolortext">&pound;555</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="63" height="20" align="left" valign="middle"></td>
                      <td width="137" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
                <td width="11" align="left" valign="top"></td>
                <td width="210" align="left" valign="top" background="images/img-pannel.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="2%" height="5" align="left" valign="top"></td>
                      <td height="5" colspan="2" align="left" valign="top"></td>
                      <td width="3%" height="5" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="2%" height="20" align="left" valign="top"></td>
                      <td height="20" colspan="2" align="left" valign="top"><img src="images/flights/flight6.gif" alt="Flights Deals" width="200" height="115" /></td>
                      <td width="3%" height="20" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="2%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_bahrain.aspx" class="blackboldtext">Bahrain</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_bahrain.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_bahrain.aspx" class="orangcolortext">&pound;395</a></td>
                          </tr>
                        </table></td>
                      <td width="3%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="2%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_kuwait.aspx" class="blackboldtext">Kuwait </a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_kuwait.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_kuwait.aspx" class="orangcolortext">&pound;360</a></td>
                          </tr>
                        </table></td>
                      <td width="3%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td width="2%" height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_doha.aspx" class="blackboldtext">Doha </a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_doha.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_doha.aspx" class="orangcolortext">&pound;395</a></td>
                          </tr>
                        </table></td>
                      <td width="3%" height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_jeddah.aspx" class="blackboldtext">Jeddah</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_jeddah.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_jeddah.aspx"class="orangcolortext">&pound;550</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_riyadh.aspx" class="blackboldtext">Riyadh</a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_riyadh.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_riyadh.aspx"class="orangcolortext">&pound;410</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="25" align="left" valign="top"></td>
                      <td height="25" colspan="2" align="left" valign="middle" class="borderhashcolor"><table width="200" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5" height="25" align="left" valign="middle"></td>
                            <td width="144" align="left" valign="middle"><a href="Deals/exclusive_deals_to_ammam.aspx" class="blackboldtext">Amman </a></td>
                            <td width="14" height="25" align="right" valign="middle" class="smalltext"><a href="Deals/exclusive_deals_to_ammam.aspx" class="smalltext">fr</a></td>
                            <td width="37" height="25" align="center" valign="middle" class="orangcolortext"><a href="Deals/exclusive_deals_to_ammam.aspx" class="orangcolortext">&pound;375</a></td>
                          </tr>
                        </table></td>
                      <td height="25" align="left" valign="top"></td>
                    </tr>
                    <tr>
                      <td height="20" align="left" valign="top"></td>
                      <td width="30%" height="20" align="left" valign="middle"></td>
                      <td width="65%" height="20" align="right" valign="middle" background="#"><a href="flights.aspx" class="blueboldtext">More flights</a></td>
                      <td height="20" align="left" valign="top"></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
        </tr>
        <tr>
          <td width="650" height="20" align="left" valign="top"><table width="649" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="210" height="10" align="left" valign="top"></td>
                <td width="10" height="10" align="left" valign="top"></td>
                <td width="210" height="10" align="left" valign="top"></td>
                <td width="10" height="10" align="left" valign="top"></td>
                <td width="209" height="10" align="left" valign="top"></td>
              </tr>
              <tr>
                <td height="40" align="left" valign="top" colspan="5"><hr />
                  <p> <br 
                      style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                    <span style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;" 
                      class="style3"> <strong>We are a fully bonded member and hold ATOL license 10758 issued by the Civil 
                    Aviation Authority.</strong></span><span style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"> </span><br 
                      style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                    <br style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                    <span style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"> &quot;Many of the flights and flight-inclusive holidays on this website are 
                    financially protected by the ATOL scheme. But ATOL protection does not apply to 
                    all holiday and travel services listed on this website. Please ask us to confirm 
                    what protection may apply to your booking. If you do not receive an ATOL 
                    Certificate then the booking will not be ATOL protected. If you do receive an 
                    ATOL Certificate but all the parts of your trip are not listed on it, those 
                    parts will not be ATOL protected. Please see our booking conditions for 
                    information or for more information about financial protection and the ATOL 
                    Certificate go to:&nbsp;</span><a href="http://www.atol.org.uk/ATOLCertificate" 
                      style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" 
                      target="_blank">www.atol.org.uk/ATOLCertificate</a><span 
                      style="color: rgb(122, 122, 122); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">&quot;.</span></p>
                  <p> The UK Flights, we are one stop travel agent shop in UK offering from Low Cost carrier to Europe, schedule Cheap Flights to worldwide destinations, we also arrange Charter flights. As a travel agent we cater for all your travel needs.  We provide best value for your money with our latest offers in economy, premium economy &amp; Business class tickets. We specialize in Australia, far East, China, India, Pakistan, Indian Ocean, Middle East, Africa, South America, North America and Canada &amp; Europe. </p>
                  <p>
                  
                  <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="left" class="textalign" height="20" style="text-align: justify;" 
                                  valign="top"><p class="auto-style6" style="color: rgb(0, 51, 204);"> <span > <strong>COPY RIGHTS FOR IMAGES AND CONTENT ON THIS WEBSITE</strong></span></p></td>
                    </tr>
                    <tr>
                      <td align="left" class="textalign" height="20" style="text-align: justify;" 
                                  valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" class="textalign" height="20" style="text-align: justify;" 
                                  valign="top"><span > All images, material and content on this website is wholly own by us or we have 
                        been carefully selected from public domain on the internet assuming it’s free to 
                        use, while selecting the images or any other material we have not come across 
                        any request to buy the same nor to register ourselves to any individual or 
                        company or organization.</span><span>&nbsp;</span></span> <br />
                        <br />
                        <span> If any individual or organization or any member of the public has concerns with 
                        use of Images or any other material or content on this website, we request to 
                        kindly contact us as soon as you are aware of it, by telephone at our office 
                        number 02079938474 or notify us by email at info@theukflights.com, in-order 
                        to take prompt action to withdraw such images or content from the website.</span> <br />
                        <br />
                        <span > We declare that we will not be liable or responsible for any legal action unless 
                        we are informed or notified to remove the images or content in first place. Once 
                        we have been requested or informed regarding any image or material or content to 
                        be removed from this website, we request to allow us 72 hours to action the 
                        same.</span><span><span class="Apple-converted-space">&nbsp;</span></span></td>
                    </tr>
                  </table>
                  </p>
                  <br />
                  <hr /></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
    <td width="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="5" align="left" valign="top"></td>
    <td height="5" align="left" valign="middle"></td>
    <td width="10" height="5" align="left" valign="middle"></td>
    <td height="5" align="left" valign="middle"></td>
    <td height="5" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
    <td width="10" height="10" align="left" valign="middle" background="images/small-line.gif"></td>
    <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <asp:Label ID="lbl_guid" runat="server" Visible="False"></asp:Label>
  </form>
</asp:Content>
