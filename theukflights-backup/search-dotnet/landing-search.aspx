<%@ Page Title="" Language="C#" MasterPageFile="~/search/SearchPage.master" AutoEventWireup="true" CodeFile="landing-search.aspx.cs" Inherits="search_landing_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="978" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="510" height="20" align="left" valign="top"></td>
    <td width="10" height="20" align="left" valign="top"></td>
    <td height="20" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="510" height="5" align="left" valign="top"></td>
    <td width="10" height="5" align="left" valign="top"></td>
    <td height="5" colspan="3" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="510" height="260" align="left" valign="top"></td>
    <td width="10" height="260" align="left" valign="top"></td>
    <td width="438" height="260" align="left" valign="top"><table width="438" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr valign="middle">
        <td width="268" height="28" align="left" class="h1">Search and book Worldwide Flights</td>
        <td width="170" height="28" align="left" class="bluetext"><img src="images/flight-1.png" width="54" height="18" /></td>
      </tr>
      <tr>
        <td height="10" colspan="2" align="left" valign="top" background="images/small-line.gif"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="78" height="20" align="left" valign="middle"><strong>Type of flight:</strong></td>
            <td width="220" height="20" align="left" valign="top"><form action="" method="post" name="form1" id="form1">
              <label>
                <input type="radio" name="radio" id="radio" value="radio" />
                </label>
              One way
              <input type="radio" name="radio" id="radio2" value="radio" />
              Return Flights
            </form></td>
            <td width="140" height="20" align="left" valign="middle"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="75" height="20" align="left" valign="middle"><strong> Flying From:</strong></td>
            <td width="229" height="20" align="left" valign="top"><form id="form3" name="form3" method="post" action="">
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
            <td width="134" height="20" align="left" valign="top"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="75" height="20" align="left" valign="middle"><strong> Flying To::</strong></td>
            <td width="229" height="20" align="left" valign="top"><form id="form2" name="form3" method="post" action="">
              <label>
                <input name="textfield" type="text" class="formstyle" id="textfield" />
                </label>
            </form></td>
            <td width="134" height="20" align="left" valign="top"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="76" height="20" align="left" valign="middle"><strong>Depart Date:</strong></td>
            <td width="102" height="20" align="left" valign="middle"><form id="form4" name="form4" method="post" action="">
              <label>
                <input name="textfield2" type="text" class="formstyle2" id="textfield2" value="DD/MM/YYYY" />
                </label>
            </form></td>
            <td width="5" height="20" align="left" valign="middle"></td>
            <td width="22" height="20" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
            <td width="10" align="left" valign="middle"></td>
            <td width="73" align="left" valign="middle"><strong>Return Date:</strong></td>
            <td width="103" align="left" valign="middle"><label>
              <input name="textfield3" type="text" class="formstyle2" id="textfield3" value="DD/MM/YYYY" />
            </label></td>
            <td width="5" align="left" valign="middle"></td>
            <td width="37" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="133" height="20" align="left" valign="middle"><strong>Preferred Airline If Any:</strong></td>
            <td width="10" height="20" align="left" valign="middle"></td>
            <td width="295" height="20" align="left" valign="middle"><form id="form6" name="form3" method="post" action="">
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
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="35" height="20" align="left" valign="middle"><strong>Adult:</strong></td>
            <td width="10" height="20" align="left" valign="middle"></td>
            <td width="51" height="20" align="left" valign="middle"><form id="form7" name="form7" method="post" action="">
              <label>
                <select name="select" id="select">
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                </select>
                </label>
            </form></td>
            <td width="10" height="20" align="left" valign="middle"></td>
            <td width="33" height="20" align="left" valign="middle"><strong>Child:</strong></td>
            <td width="10" align="left" valign="middle"></td>
            <td width="51" align="left" valign="middle"><form id="form5" name="form7" method="post" action="">
              <label>
                <select name="select2" id="select2">
                  <option value="00" selected="selected">00</option>
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                </select>
                </label>
            </form></td>
            <td width="10" align="left" valign="middle"></td>
            <td width="36" align="left" valign="middle"><strong>Infant:</strong></td>
            <td width="10" align="left" valign="middle"></td>
            <td width="182" align="left" valign="middle"><select name="select3" id="select3">
              <option value="00">00</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
            </select></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="108" height="20" align="left" valign="middle"><strong>Flight Preferences:</strong></td>
            <td width="10" height="20" align="left" valign="middle"></td>
            <td width="320" height="20" align="left" valign="top"><form action="" method="post" name="form8" class="smalltext" id="form8">
              <label>
                <input type="checkbox" name="checkbox" id="checkbox" />
                </label>
              I prefer non-stop flights
            </form></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" colspan="2" align="left" valign="middle"></td>
      </tr>
      <tr>
        <td height="20" colspan="2" align="left" valign="middle"><table width="438" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="80" height="25" align="left" valign="middle"><strong> Class Type:</strong></td>
            <td width="10" height="25" align="left" valign="top"></td>
            <td width="226" height="25" align="left" valign="top"><form id="form9" name="form9" method="post" action="">
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
            <td width="122" align="left" valign="top"><a href="#"><img src="images/search.gif" width="82" height="23" border="0" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="10" height="260" align="left" valign="top"></td>
    <td width="10" height="260" align="left" valign="top"></td>
  </tr>
</table>
</asp:Content>

