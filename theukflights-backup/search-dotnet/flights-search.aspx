<%@ Page Title="" Language="C#" MasterPageFile="~/search/SearchPage.master" AutoEventWireup="true" CodeFile="flights-search.aspx.cs" Inherits="search_flights_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="469" border="0" align="left" cellpadding="0" cellspacing="0" class="bluebordercolor">
  <tr>
    <td height="30" colspan="3" align="left" valign="top" bgcolor="#256AA6"><table width="467" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="420" height="30" align="left" valign="middle" bgcolor="#256AA6" class="whiteboldtext">Search and book Worldwide Flights</td>
        <td width="37" height="30" align="right" valign="middle" bgcolor="#256AA6"><img src="../images/small-flights.gif" width="37" height="22" /></td>
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
        <td width="343" height="20" align="left" valign="middle"><label>
          <input type="radio" name="radio" id="radio" value="radio" />
          </label>
          Return flights
          <input type="radio" name="radio" id="radio2" value="radio" />
          One way </td>
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
        <td width="220" height="20" align="left" valign="top"><form id="form3" name="form3" method="post" action="">
          <label>
            <select name="DestinationFrom" id="DestinationFrom">
              <option value="ABZ">Aberdeen</option>
              <option value="BFS">Belfast International</option>
              <option value="BHD">Belfast City</option>
              <option value="BHX">Birmingham</option>
              <option value="BOH">Bournemouth</option>
              <option value="BRS">Bristol</option>
              <option value="CWL">Cardiff</option>
              <option value="EDI">Edinburgh</option>
              <option value="EMA">East Midlands</option>
              <option value="EXT">Exeter</option>
              <option value="GCI">Guernsey</option>
              <option value="GLA">Glasgow International</option>
              <option value="HUY">Humberside</option>
              <option value="INV">Inverness</option>
              <option value="IOM">Isle of Man</option>
              <option value="JER">Jersey</option>
              <option value="LBA">Leeds Bradford</option>
              <option value="LCY">London City</option>
              <option value="LGW">London Gatwick</option>
              <option selected="selected" value="LHR">London Heathrow</option>
              <option value="LON">London (All)</option>
              <option value="LPL">Liverpool</option>
              <option value="LTN">London Luton</option>
              <option value="MAN">Manchester</option>
              <option value="MME">Teesside</option>
              <option value="NCL">Newcastle</option>
              <option value="NWI">Norwich</option>
              <option value="PIK">Glasgow Prestwick</option>
              <option value="PLH">Plymouth</option>
              <option value="SOU">Southampton</option>
              <option value="STN">London Stansted</option>
              <option value="SZD">Sheffield</option>
            </select>
            </label>
        </form></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="220" height="20" align="left" valign="top"><form id="form2" name="form3" method="post" action="">
          <label>
            <input name="textfield" type="text" class="formstyle-mini" id="textfield" />
            </label>
        </form></td>
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
        <td width="185" height="20" align="left" valign="top"><form id="form" name="form3" method="post" action="">
          <label>
            <input name="textfield3" type="text" class="formstyle" id="textfield2" value="12/06/2012" />
            </label>
        </form></td>
        <td width="31" align="left" valign="middle"><img src="../images/calender.png" alt="cal" width="20" height="20" /></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="185" height="20" align="left" valign="top"><form id="form4" name="form3" method="post" action="">
          <label>
            <input name="textfield2" type="text" class="formstyle" id="textfield3" value="12/13/2012" />
            </label>
        </form></td>
        <td width="35" align="left" valign="middle"><img src="../images/calender.png" alt="cal" width="20" height="20" /></td>
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
        <td width="220" height="20" align="left" valign="middle"><strong>Preferred Airline <span class="smalltext">If Any</span></strong></td>
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
        <td width="220" height="20" align="left" valign="middle"><form id="form6" name="form3" method="post" action="">
          <label>
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
            </label>
        </form></td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td width="220" height="20" align="left" valign="middle"><table width="219" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="219" height="20" align="left" valign="middle"><select name="AdultCnt" id="AdultCnt">
              <option value="1" selected="selected">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
            </select></td>
            <td width="219" height="20" align="left" valign="middle"><select name="Childcnt" id="Childcnt">
              <option value="0" selected="selected">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
            </select></td>
            <td width="219" height="20" align="left" valign="middle"><select name="InfantCnt" id="InfantCnt">
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
    <td height="10" align="left" valign="top"><table width="447" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="220" height="20" align="left" valign="middle"><strong>Flight Preferences:</strong></td>
        <td width="10" height="20" align="left" valign="middle"></td>
        <td width="220" height="20" align="left" valign="middle"><strong> ClassType:</strong></td>
      </tr>
      <tr>
        <td width="220" height="20" align="left" valign="top"><span class="smalltext">
          <label>
            <input type="checkbox" name="checkbox" id="checkbox" />
            </label>
          I prefer non-stop flights </span></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="220" height="20" align="left" valign="top"><form id="form9" name="form9" method="post" action="">
          <label>
            <select name="select4" id="select4">
              <option value="0" selected="selected">Any</option>
              <option value="ec">Economy</option>
              <option value="bu">Busines</option>
              <option value="pe">Premium Economy</option>
              <option value="fr">First</option>
            </select>
            </label>
        </form></td>
      </tr>
    </table></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="16" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="20" align="left" valign="top"></td>
    <td height="20" align="center" valign="top"><a href="#"><img src="../images/search-cheap-flights.gif" alt="search cheap flights" width="132" height="23" border="0" /></a></td>
    <td height="20" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="15" colspan="3" align="left" valign="top"></td>
  </tr>
</table>
</asp:Content>

