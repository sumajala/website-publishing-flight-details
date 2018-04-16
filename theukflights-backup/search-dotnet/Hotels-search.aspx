<%@ Page Title="" Language="C#" MasterPageFile="~/search/SearchPage.master" AutoEventWireup="true" CodeFile="Hotels-search.aspx.cs" Inherits="search_Hotels_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="320" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td width="320" height="30" align="left" valign="middle" background="images/Holiday-pannel.gif" class="whiteboldtext">Search For Hotels</td>
  </tr>
  <tr>
    <td width="320" height="20" align="left" valign="top" background="images/search-bg-slider.gif" class="bluebordercolor"><table width="318" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="10" align="left" valign="top"></td>
        <td width="298" height="10" align="left" valign="top"></td>
        <td width="10" height="10" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="66" height="28" align="left" valign="middle"><strong>Country:</strong></td>
            <td width="10" height="28" align="left" valign="middle"></td>
            <td width="204" height="28" align="left" valign="middle"><select name="select5" class="hotel-form" id="select5">
              <option value="0" selected="selected">-- Select Country --</option>
              <option value="1">Albania</option>
              <option value="2">Algeria</option>
              <option value="3">Andorra</option>
              <option value="4">Anguilla</option>
              <option value="5">Antigua &amp; Barbuda</option>
              <option value="6">Argentina</option>
              <option value="7">Armenia</option>
              <option value="8">Aruba</option>
              <option value="9">Australia</option>
              <option value="10">Austria</option>
              <option value="11">Azerbaijan</option>
              <option value="12">Bahamas</option>
              <option value="13">Bahrain</option>
              <option value="14">Bangladesh</option>
              <option value="15">Barbados</option>
              <option value="16">Belarus</option>
              <option value="17">Belgium</option>
              <option value="18">Belize</option>
              <option value="19">Bermuda</option>
              <option value="20">Bhutan</option>
              <option value="21">Bolivia</option>
              <option value="22">Bonaire Sint Eustatius and Saba</option>
              <option value="23">Bosnia Herzegovina</option>
              <option value="24">Botswana</option>
              <option value="25">Brazil</option>
              <option value="26">Brunei Darussalam</option>
              <option value="27">Bulgaria</option>
              <option value="28">Burundi</option>
              <option value="29">Cambodia</option>
              <option value="30">Cameroon</option>
              <option value="31">Canada</option>
              <option value="32">Cayman Islands</option>
              <option value="33">Chad</option>
              <option value="34">Chile</option>
              <option value="35">China</option>
              <option value="36">Colombia</option>
              <option value="37">Cook Islands</option>
              <option value="38">Costa Rica</option>
              <option value="39">Cote D'ivoire</option>
              <option value="40">Croatia</option>
              <option value="41">Curacao</option>
              <option value="42">Cyprus</option>
              <option value="43">Czech Republic</option>
              <option value="44">Denmark</option>
              <option value="45">Djibouti</option>
              <option value="46">Dominican Republic</option>
              <option value="47">Ecuador</option>
              <option value="48">Egypt</option>
              <option value="49">El Salvador</option>
              <option value="50">Estonia</option>
              <option value="51">Ethiopia</option>
              <option value="52">Faroe Islands</option>
              <option value="53">Fiji</option>
              <option value="54">Finland</option>
              <option value="55">France</option>
              <option value="56">French Guiana</option>
              <option value="57">French Polynesia</option>
              <option value="58">Georgia</option>
              <option value="59">Germany</option>
              <option value="60">Ghana</option>
              <option value="61">Gibraltar</option>
              <option value="62">Greece</option>
              <option value="63">Greenland</option>
              <option value="64">Grenada</option>
              <option value="65">Guadeloupe</option>
              <option value="66">Guam</option>
              <option value="67">Guatemala</option>
              <option value="68">Honduras</option>
              <option value="69">Hong Kong</option>
              <option value="70">Hungary</option>
              <option value="71">Iceland</option>
              <option value="73">India</option>
              <option value="74">Indonesia</option>
              <option value="75">Ireland</option>
              <option value="76">Israel</option>
              <option value="77">Italy</option>
              <option value="78">Jamaica</option>
              <option value="79">Japan</option>
              <option value="80">Jordan</option>
              <option value="81">Kazakhstan</option>
              <option value="82">Kenya</option>
              <option value="83">Kuwait</option>
              <option value="84">Laos</option>
              <option value="85">Latvia</option>
              <option value="86">Lebanon</option>
              <option value="87">Lesotho</option>
              <option value="88">Liechtenstein</option>
              <option value="89">Lithuania</option>
              <option value="90">Luxembourg</option>
              <option value="91">Macau</option>
              <option value="92">Macedonia</option>
              <option value="93">Madagascar</option>
              <option value="94">Malaysia</option>
              <option value="95">Maldives</option>
              <option value="96">Malta</option>
              <option value="97">Martinique</option>
              <option value="98">Mauritius</option>
              <option value="99">Mexico</option>
              <option value="100">Micronesia</option>
              <option value="101">Moldova</option>
              <option value="102">Monaco</option>
              <option value="103">Mongolia</option>
              <option value="104">Montenegro</option>
              <option value="105">Morocco</option>
              <option value="106">Mozambique</option>
              <option value="107">Myanmar</option>
              <option value="108">Namibia</option>
              <option value="109">Nepal</option>
              <option value="110">Netherlands</option>
              <option value="111">New Caledonia</option>
              <option value="112">New Zealand</option>
              <option value="113">Nicaragua</option>
              <option value="114">Nigeria</option>
              <option value="115">Niue</option>
              <option value="116">Norfolk Island</option>
              <option value="117">Northern Mariana Islands</option>
              <option value="118">Norway</option>
              <option value="119">Oman</option>
              <option value="120">Pakistan</option>
              <option value="121">Palau</option>
              <option value="122">Palestinian Territory</option>
              <option value="123">Panama</option>
              <option value="124">Papua New Guinea</option>
              <option value="125">Paraguay</option>
              <option value="126">Peru</option>
              <option value="127">Philippines</option>
              <option value="128">Poland</option>
              <option value="129">Portugal</option>
              <option value="130">Puerto Rico</option>
              <option value="131">Qatar</option>
              <option value="132">Reunion Island</option>
              <option value="133">Romania</option>
              <option value="134">Russia</option>
              <option value="135">Rwanda</option>
              <option value="136">Saint Lucia</option>
              <option value="137">Saint Martin (France)</option>
              <option value="138">Samoa</option>
              <option value="139">San Marino</option>
              <option value="140">Saudi Arabia</option>
              <option value="141">Senegal</option>
              <option value="142">Serbia</option>
              <option value="143">Seychelles</option>
              <option value="144">Sierra Leone</option>
              <option value="145">Singapore</option>
              <option value="146">Sint Maarten (Netherlands)</option>
              <option value="148">Slovakia</option>
              <option value="149">Slovenia</option>
              <option value="150">South Africa</option>
              <option value="151">South Korea</option>
              <option value="152">Spain</option>
              <option value="153">Sri Lanka</option>
              <option value="154">St. Vincent &amp; Grenadines</option>
              <option value="155">Swaziland</option>
              <option value="156">Sweden</option>
              <option value="157">Switzerland</option>
              <option value="158">Taiwan</option>
              <option value="159">Tanzania</option>
              <option value="160">Thailand</option>
              <option value="161">Tonga</option>
              <option value="162">Trinidad &amp; Tobago</option>
              <option value="163">Tunisia</option>
              <option value="164">Turkey</option>
              <option value="165">Turks &amp; Caicos Islands</option>
              <option value="166">Uganda</option>
              <option value="167">Ukraine</option>
              <option value="168">United Arab Emirates</option>
              <option value="169">United Kingdom</option>
              <option value="170">United States</option>
              <option value="171">Uruguay</option>
              <option value="172">Uzbekistan</option>
              <option value="173">Vanuatu</option>
              <option value="174">Venezuela</option>
              <option value="175">Vietnam</option>
              <option value="176">Virgin Islands (British)</option>
              <option value="178">Virgin Islands (U.S.)</option>
              <option value="179">Yemen</option>
              <option value="180">Zambia</option>
              <option value="181">Zimbabwe</option>
            </select></td>
            <td width="10" height="28" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="66" height="28" align="left" valign="middle"><strong>City:</strong></td>
            <td width="10" height="28" align="left" valign="middle"></td>
            <td width="204" height="28" align="left" valign="middle"><select name="select" class="hotel-form" id="select1">
              <option value="0" selected="selected">-- Select City --</option>
              <option value="200">Tirana</option>
              <option value="201">Vlora</option>
              <option value="202">Durres</option>
              <option value="203">Gjirokaster</option>
              <option value="204">Himara</option>
              <option value="205">Rubik</option>
              <option value="206">Berat</option>
              <option value="207">Pogradec</option>
              <option value="0">-------------------</option>
              <option value="208">Berat</option>
              <option value="209">Durres</option>
              <option value="210">Gjirokaster</option>
              <option value="211">Himara</option>
              <option value="212">Pogradec</option>
              <option value="213">Rubik</option>
              <option value="214">Saranda</option>
              <option value="215">Shkoder</option>
              <option value="216">Tirana</option>
              <option value="217">Vlora</option>
            </select></td>
            <td width="10" height="28" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="66" height="28" align="left" valign="middle"><strong>Hotel:</strong></td>
            <td width="10" height="28" align="left" valign="middle"></td>
            <td width="204" height="28" align="left" valign="middle"><select name="SelectHotel" class="hotel-form" id="SelectHotel">
              <option value="0" selected="selected">-- Select Hotel --</option>
              <option value="300">Hotel Ikea Vlore</option>
              <option value="301">Hotel Jerolda</option>
              <option value="302">Hotel Lux Vlore</option>
              <option value="303">Hotel Regina</option>
              <option value="303">New York Hotel</option>
              <option value="304">Rapos Resort</option>
              <option value="305">Vlora International Hotel</option>
            </select>
            </td>
            <td width="10" height="28" align="left" valign="middle"></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28" align="left" valign="middle"><strong>Check In:</strong></td>
            <td width="10" height="28" align="left" valign="middle"></td>
            <td width="40" height="28" align="left" valign="middle"><select name="select" id="select">
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
            </select></td>
            <td width="5" height="28" align="left" valign="middle"></td>
            <td width="82" height="28" align="left" valign="middle"><select name="Select Month" id="Select Month">
              <option value="" selected="selected">Month</option>
              <option value="11,2012">Nov, 2012</option>
              <option value="12,2012">Dec, 2012</option>
              <option value="1,2013">Jan, 2013</option>
              <option value="2,2013">Feb, 2013</option>
              <option value="3,2013">Mar, 2013</option>
              <option value="4,2013">Apr, 2013</option>
              <option value="5,2013">May, 2013</option>
              <option value="6,2013">Jun, 2013</option>
              <option value="7,2013">Jul, 2013</option>
              <option value="8,2013">Aug, 2013</option>
              <option value="9,2013">Sep, 2013</option>
              <option value="10,2013">Oct, 2013</option>
              <option value="11,2013">Nov, 2013</option>
            </select></td>
            <td width="5" align="left" valign="middle"></td>
            <td width="69" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28" align="left" valign="middle"><strong>Check Out:</strong></td>
            <td width="10" height="28" align="left" valign="middle"></td>
            <td width="40" height="28" align="left" valign="middle"><select name="select2" id="select2">
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
            </select></td>
            <td width="5" height="28" align="left" valign="middle"></td>
            <td width="82" height="28" align="left" valign="middle"><select name="Select Month2" id="Select Month2">
              <option value="" selected="selected">Month</option>
              <option value="11,2012">Nov, 2012</option>
              <option value="12,2012">Dec, 2012</option>
              <option value="1,2013">Jan, 2013</option>
              <option value="2,2013">Feb, 2013</option>
              <option value="3,2013">Mar, 2013</option>
              <option value="4,2013">Apr, 2013</option>
              <option value="5,2013">May, 2013</option>
              <option value="6,2013">Jun, 2013</option>
              <option value="7,2013">Jul, 2013</option>
              <option value="8,2013">Aug, 2013</option>
              <option value="9,2013">Sep, 2013</option>
              <option value="10,2013">Oct, 2013</option>
              <option value="11,2013">Nov, 2013</option>
            </select></td>
            <td width="5" align="left" valign="middle"></td>
            <td width="69" align="left" valign="middle"><img src="images/calender.png" alt="cal" width="20" height="20" /></td>
          </tr>
        </table></td>
        <td width="10" height="28" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="10" height="28" align="left" valign="top"></td>
        <td height="28" align="left" valign="middle"><table width="298" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="85" height="25" align="left" valign="middle"><strong>Room:</strong></td>
            <td width="85" height="25" align="left" valign="middle"><strong>Adults:</strong></td>
            <td width="128" height="25" align="left" valign="middle"><strong>Children (2-11):</strong></td>
          </tr>
          <tr>
            <td width="85" height="25" align="left" valign="top"><form id="form7" name="form7" method="post" action="">
              <label>
                <select name="select3" id="select3">
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                </select>
                </label>
            </form></td>
            <td width="85" height="25" align="left" valign="top"><select name="select3" id="select4">
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
            </select></td>
            <td height="25" align="left" valign="top"><select name="select4" id="select6">
              <option value="00">00</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
            </select></td>
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
            <td width="184" height="25" align="center" valign="middle"><a href="#"></a></td>
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

