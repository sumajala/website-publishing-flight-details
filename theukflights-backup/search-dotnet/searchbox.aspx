<%@ Page Title="" Language="C#" MasterPageFile="~/search/SearchPage.master" AutoEventWireup="true" CodeFile="searchbox.aspx.cs" Inherits="search_searchbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="320" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="320" height="30" align="left" valign="middle" background="images/Holiday-pannel.gif" class="whiteboldtext">Search and book Worldwide Flights</td>
  </tr>
  <tr>
    <td width="320" height="20" align="left" valign="top" background="images/search-bg-slider.gif" class="bluebordercolor"><table width="318" border="0" cellspacing="0" cellpadding="0">
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
        <td height="20" colspan="2" align="left" valign="top"><form id="form1" name="form1" method="post" action="">
          <label>
            <input type="radio" name="radio" id="radio" value="radio" />
            </label>
          Round Flights
          <input type="radio" name="radio" id="radio2" value="radio" />
          One Way
        </form></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="90" height="25" align="left" valign="middle"><strong>Flying from: </strong></td>
            <td width="208" height="25" align="left" valign="middle"><form id="form3" name="form3" method="post" action="">
              <label>
                <input name="textfield4" type="text" class="formstyle" id="textfield4" />
                </label>
            </form></td>
            <td width="10" height="25" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="90" height="25" align="left" valign="middle"><strong>Flying to: </strong></td>
            <td width="208" height="25" align="left" valign="middle"><form id="form2" name="form3" method="post" action="">
              <label>
                <input name="textfield" type="text" class="formstyle" id="textfield" />
                </label>
            </form></td>
            <td width="10" height="25" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="88" height="25" align="left" valign="middle"><strong>Depart Date:</strong></td>
            <td width="110" height="25" align="left" valign="middle"><form id="form4" name="form4" method="post" action="">
              <label>
                <input name="textfield2" type="text" class="formstyle2" id="textfield2" value="DD/MM/YYYY" />
                </label>
            </form></td>
            <td width="90" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
            <td width="10" height="25" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="88" height="25" align="left" valign="middle"><strong>Return Date:</strong></td>
            <td width="110" height="25" align="left" valign="middle"><form id="form5" name="form4" method="post" action="">
              <label>
                <input name="textfield3" type="text" class="formstyle2" id="textfield3" value="DD/MM/YYYY" />
                </label>
            </form></td>
            <td width="90" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
            <td width="10" height="25" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="144" height="28" align="left" valign="middle"><strong>Preferred Airline If Any:</strong></td>
            <td width="144" height="28" align="left" valign="middle"></td>
            <td width="10" height="28" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="204" height="28" align="left" valign="middle"><form id="form6" name="form3" method="post" action="">
              <select name="AirLineCode" id="AirLineCode" class="select_elew">
                <option value="" selected="selected">*Any</option>
                <option value="EI">Aer Lingus</option>
                <option value="8U">Afriqiyah Airways</option>
                <option value="4L">Air Astana</option>
                <option value="AC">Air Canada</option>
                <option value="CA">Air China</option>
                <option value="AF">Air France</option>
                <option value="AI">Air India</option>
                <option value="JM">Air Jamaica</option>
                <option value="KM">Air Malta</option>
                <option value="MK">Air Mauritius</option>
                <option value="NZ">Air New Zealand</option>
                <option value="SW">Air Namibia</option>
                <option value="HM">Air Seychelles</option>
                <option value="TN">Air Tahiti</option>
                <option value="TS">Air transat</option>
                <option value="UM">Air Zimbabwe</option>
                <option value="AZ">Alitalia</option>
                <option value="AA">American Airlines</option>
                <option value="OZ">Asiana Airlines</option>
                <option value="OS">Austrian Airlines</option>
                <option value="BA">British Airways</option>
                <option value="BD">British Midland</option>
                <option value="SN">Brussels Airways</option>
                <option value="BW">BWIA</option>
                <option value="CX">Cathay Pacific</option>
                <option value="CI">China Airlines</option>
                <option value="MU">China Eastern Airline</option>
                <option value="CO">Continental</option>
                <option value="CY">Cyprus Airways</option>
                <option value="OK">Czech Airlines</option>
                <option value="DL">Delta Airlines</option>
                <option value="MS">Egyptair</option>
                <option value="EK">Emirates</option>
                <option value="ET">Ethiopian Airlines</option>
                <option value="EY">Etihad Airway</option>
                <option value="BR">Eva Air</option>
                <option value="AY">Finnair</option>
                <option value="GF">Gulf Air</option>
                <option value="IB">Iberia Airlines of Spain</option>
                <option value="FI">Icelandair</option>
                <option value="JL">Japan Airline</option>
                <option value="9W">Jet Airways</option>
                <option value="KQ">Kenya Airways</option>
                <option value="IT">Kingfisher</option>
                <option value="KL">KLM Royal Dutch Airlines</option>
                <option value="KE">Korean Air</option>
                <option value="KU">Kuwait Airways</option>
                <option value="LO">LOT-Polish Airlines</option>
                <option value="LH">Lufthansa</option>
                <option value="W5">Mahan Air</option>
                <option value="MH">Malaysian Airlines</option>
                <option value="MP">Martinair</option>
                <option value="NW">Northwest Airlines Inc</option>
                <option value="OA">Olympic Airways</option>
                <option value="9R">Phuket Air</option>
                <option value="QF">Qantas</option>
                <option value="QR">Qatar Airways</option>
                <option value="WY">Oman Air </option>
                <option value="AT">Royal Air Maroc</option>
                <option value="BI">Royal Brunei</option>
                <option value="RJ">Royal Jordanian</option>
                <option value="SK">SAS</option>
                <option value="SV">Saudi Arabian Airline</option>
                <option value="Y7">Silverjet</option>
                <option value="SQ">Singapore Airlines</option>
                <option value="SA">South African Airways</option>
                <option value="UL">Sri Lankan Airlines</option>
                <option value="LX">Swiss Airlines</option>
                <option value="JJ">TAM Brasilian Airline</option>
                <option value="TP">TAP - Air Portugal</option>
                <option value="TG">Thai International</option>
                <option value="TK">THY Turkish</option>
                <option value="T5">Turkmenistan</option>
                <option value="PS">Ukraine Airways</option>
                <option value="UA">United Airlines</option>
                <option value="US">US Airways</option>
                <option value="HY">Uzbekistan Airways</option>
                <option value="VS">Virgin Atlantic</option>
              </select>
            </form></td>
            <td width="84" height="28" align="left" valign="top"></td>
            <td width="10" height="28" align="left" valign="middle"></td>
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
            <td width="85" height="25" align="left" valign="top"><form id="form7" name="form7" method="post" action="">
              <label>
                <select name="AdultCnt" id="AdultCnt">
                  <option value="1" selected="selected">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                </select>
                </label>
            </form></td>
            <td width="85" height="25" align="left" valign="top"><select name="Childcnt" id="Childcnt">
              <option value="0" selected="selected">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
            </select></td>
            <td height="25" align="left" valign="top"><select name="InfantCnt" id="InfantCnt">
              <option value="0" selected="selected">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
            </select></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="120" height="25" align="left" valign="middle"><strong>Flight Preferences:</strong></td>
            <td width="178" align="left" valign="middle"></td>
          </tr>
          <tr>
            <td height="20" colspan="2" align="left" valign="top"><form action="" method="post" name="form8" class="smalltext" id="form8">
              <label>
                <input type="checkbox" name="checkbox" id="checkbox" />
                </label>
              I prefer non-stop flights
            </form></td>
          </tr>
          <tr>
            <td height="25" colspan="2" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
              <tr valign="bottom">
                <td width="298" height="30" align="left" valign="middle"><strong> ClassType:</strong></td>
                <td width="298" height="30" align="left" valign="middle"><form id="form9" name="form9" method="post" action="">
                  <label>
                    <select name="Flightclass" id="Flightclass" style="width:163px;">
                      <option value="All" selected="selected">Any</option>
                      <option value="Y">Economy</option>
                      <option value="C">Business</option>
                      <option value="F">First</option>
                    </select>
                    </label>
                </form></td>
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
            <td width="184" height="25" align="center" valign="middle" bgcolor="#EDEFEF"><a href="#"></a></td>
            <td width="81" height="25" align="right" valign="top"><a href="#"></a><a href="#"><img src="images/search.gif" alt="search" width="76" height="22" border="0" /></a></td>
            <td width="33" height="25" align="left" valign="top"></td>
          </tr>
        </table>
            <a href="#"></a></td>
      </tr>
      <tr>
        <td width="10" height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="middle"></td>
        <td width="10" height="10" align="left" valign="top"></td>
      </tr>
    </table></td>
  </tr>
</table>
</asp:Content>

