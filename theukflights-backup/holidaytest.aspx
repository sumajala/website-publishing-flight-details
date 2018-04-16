<%@ Page Title="" Language="C#" MasterPageFile="~/theukflights.master" AutoEventWireup="true" CodeFile="Hoildays.aspx.cs" Inherits="Hoildays" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   <tbody><tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td width="978" height="10" align="left" valign="top"></td>
    <td width="10" height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td width="10" height="280" align="left" valign="top"></td>
    <td width="978" height="300" align="left" valign="top">
    <table width="978" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="499" height="10" align="left" valign="top"><div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox" style="width:980px;">
        <div class="item active">
          <img class="first-slide" src="mallorca-beach.jpg" alt="flights offers" width="980px" height="402px" class="image-responsive">
          <div class="container" style="text-align:top">
            <div class="carousel-caption">
                <div class="text" style="position:absolute; left:-200px;bottom:280px; z-index:-50;background:#084786;opacity:0.7;padding:0 5px 5px 5px;border-radius:0px 0px 10px;">
              <h3><font face="Papyrus">3 or 7nt All-Inclusive Mallorca Break & Flights</font></h3>
              <p><font face="Lucida Bright">From &pound;99pp instead of up to &pound;170.48pp for a three-night all-inclusive <br/>Mallorca break including flights, from &pound;199pp for seven nights - save 42%.</font></p>
                </div>
              <p style="position:absolute; right:-150px;top:10px; z-index:-50;"><a class="btn btn-lg btn-primary" href="contact.html" onclick="return popup(this,'sreekanth')" role="button">Get a Call Back</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="first-slide" src="mallorca-beach1.jpg" width="980px" height="402px" class="image-responsive">          <div class="container">
            <div class="carousel-caption">
                <div class="text" align="top" style="position:absolute; left:-200px;bottom:280px; z-index:-50;background:red;opacity:0.7;padding:0 5px 5px 5px;border-radius:0px 0px 10px;">
              <h3><font face="Papyrus">3 or 7nt Italian Beach Break, Flights & Breakfast</font></h3>
              <p><font face="Lucida Bright">From &pound; 139pp for a three-night Italian beach break including flights, train transfers<br/> and breakfast, or from &pound; 199pp for seven nights - save up to 24%.</font></p>
                    </div>
              <p style="position:absolute; right:-150px;top:10px; z-index:-50;"><a class="btn btn-lg btn-danger" style="background:#DC143C"href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')" role="button">Get a Call Back</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="mallorca-beach2.jpg" alt="flights offers" width="980" height="402" class="image-responsive">
          <div class="container">
            <div class="carousel-caption">
                <div class="text" style="position:absolute; left:-200px;bottom:280px; z-index:-50;background-image: url('../../opacity88.png');padding:0 5px 5px 5px;border-radius:0px 0px 10px;">
              <h4><font face="Papyrus">4, 7 or 14nt Turkey Beach Break - Choice of Apartments</font></h4>
              <p><font face="Lucida Bright">From &pound; 39pp instead of up to &pound; 139pp for a 4-night self-catered Turkey break, <br/>from &pound; 59 for 7 nights, from &pound; 119 for 14 nights</font></p>
                    </div>                        
              <p style="position:absolute; right:-150px;top:10px; z-index:-50;"><a class="btn btn-lg btn-warning" style="background:#FF4500;" href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')" role="button">Get a Call Back</a></p>
            </div>
          </div>
        </div>
<div class="item">
          <img src="cyprus.jpg" alt="flights offers" width="980" height="402" class="image-responsive">
          <div class="container">
            <div class="carousel-caption">
                <div class="text" style="position:absolute; left:-200px;bottom:280px; z-index:-50;background:#3677b7;opacity:0.8;padding:0 5px 5px 5px;border-radius:0px 0px 10px;">
              <h3><font face="Papyrus">7nt Cyprus Beach Getaway & Flights</font></h3>
              <p><font face="Lucida Bright">From &pound; 159pp for a seven-night Paphos break including breakfast<br/>and return flights - save up to 36%</font></p>
                    </div>
              <p style="position:absolute; right:-150px;top:10px; z-index:-50;"><a class="btn btn-lg btn-primary" href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')" role="button">Get a Call Back</a></p>
            </div>
          </div>
        </div>
      </div>
    </div><!-- /.carousel --></td>
      </tr>
    </tbody></table></td>
    <td width="10" height="280" align="left" valign="top"></td>
  </tr><tr>
    <td width="10" height="10" align="left" valign="top"></td>
    <td width="978" height="10" align="left" valign="top"></td>
    <td width="10" height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top"><table width="978" border="0" cellspacing="0" cellpadding="0">
      <tbody><tr>
        <td width="319" height="20" align="left" valign="top"><table width="319" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor1">
          <tbody><tr>
            <td height="42" colspan="3" align="left" valign="top" background="images/Holiday-pannel.gif" class="whiteboldtext">Egypt</td>
          </tr>
          <tr>
            <td height="5" colspan="3" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td width="299" align="left" valign="top"><img src="hotels/egypth2.jpg" alt="Africa flights" width="300" height="60"></td>
            <td width="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Hurgada</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;242</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle"> Naama Bay</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;247</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Sharm El Shaik</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;242</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr>
                <td width="60%" height="25" align="left" valign="middle"><a href="#" class="blackboldtext"></a></td>
                <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext"></a><a href="#" class="orangcolortext"></a></td>
                <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"></a></td>
              </tr>
                <tbody>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          
          <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr>
                <td width="60%" height="25" align="left" valign="middle"><a href="#" class="blackboldtext"></a></td>
                <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext"></a><a href="#" class="orangcolortext"></a></td>
                <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"></a></td>
              </tr>
              <tbody>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="middle" background="imaes/small-line.gif"></td>
          </tr>
          <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
         </tbody></table></td>
        <td width="10" height="20" align="left" valign="top"></td>
        <td width="319" height="20" align="left" valign="top"><table width="319" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor1">
          <tbody><tr>
            <td height="42" colspan="3" align="left" valign="top" background="images/Holiday-pannel.gif" class="whiteboldtext"> Turkey</td>
          </tr>
          <tr>
            <td height="5" colspan="3" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td width="299" align="left" valign="top"><img src="hotels/turkeyH4.jpg" alt="Asia Flights" width="300" height="60"></td>
            <td width="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Dalaman</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;100</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Antalya</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;90</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Bodrum</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;119</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle"> Marmaris</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;100</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr>
                <td width="60%" height="25" align="left" valign="middle"><a href="#" class="blackboldtext"></a></td>
                <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext"></a><a href="#" class="orangcolortext"></a></td>
                <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"></a></td>
              </tr>
              <tbody>
            </tbody></table></td>
            <td width="10" height="0" rowspan="2" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="middle" background="iages/small-line.gif"></td>
          </tr>
          <tr>
            <td width="10" height="0" rowspan="2" align="left" valign="top"></td>
            <td height="5" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
        </tbody></table></td>
        <td width="11" align="left" valign="top"></td>
        <td width="319" align="left" valign="top"><table width="319" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor1">
          <tbody><tr>
            <td height="42" colspan="3" align="left" valign="top" background="images/Holiday-pannel.gif" class="whiteboldtext">Greece</td>
          </tr>
          <tr>
            <td height="5" colspan="3" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td width="299" align="left" valign="top"><img src="hotels/greece.jpg" alt="Central Americ Flights" width="300" height="60"></td>
            <td width="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Corfu</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;105</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Crete</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;112</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Kos</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;105</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="iges/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td width="60%" height="25" align="left" valign="middle"><a href="#" class="blackboldtext"></a></td>
                <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext"></a><a href="#" class="orangcolortext"></a></td>
                <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"></a></td>
              </tr>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="middle" background="imas/small-line.gif"></td>
          </tr>
		  <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
        </tbody></table></td>
      </tr>
      <tr>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
      </tr>
      <tr>
        <td height="20" align="left" valign="top"><table width="319" border="0" cellpadding="0" cellspacing="0" class="bluebordercolor1">
          <tbody><tr>
            <td height="42" colspan="3" align="left" valign="top" background="images/Holiday-pannel.gif" class="whiteboldtext"> Spain</td>
          </tr>
          <tr>
             <td height="5" colspan="3" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td width="299" align="left" valign="top"><img src="hotels/spainh.jpg" alt="Europe Flights" width="300" height="60"></td>
            <td width="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Ibiza</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;112</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Tenerife</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;102</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Lanzarote</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;107</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" align="left" valign="top"></td>
            <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="60%" height="25" align="left" valign="middle">Palma Majorca</td>
                  <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;128</a></td>
                  <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
                </tr>
            </tbody></table></td>
            <td width="10" height="20" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="10" align="left" valign="top"></td>
            <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
            <td width="10" height="10" align="left" valign="top"></td>
          </tr>
          <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td width="60%" height="25" align="left" valign="middle">Benidorm</td>
                <td width="23%" height="25" align="right" valign="middle"><a href="#" class="smalltext">Fr</a><a href="#" class="orangcolortext"> &pound;122</a></td>
                <td width="17%" height="25" align="right" valign="middle"><a href="requestcallback/request-call-back.aspx" onclick="return popup(this,'sreekanth')"><img src="images/inquire.gif" alt="Inquire" width="43" height="15" border="0"></a></td>
              </tr>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
          <tr>
            <td height="10" align="left" valign="middle" background="images/small-line.gif"></td>
          </tr>
    	  <tr>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
            <td height="10" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
            </tbody></table></td>
            <td width="10" height="20" rowspan="2" align="left" valign="top"></td>
          </tr>
		  </tbody></table></td>
        <td height="20" align="left" valign="top"></td>
        <td height="20" align="left" valign="top"><img src="hotels/ms.jpg" alt="flights" width="319px" height="319px"></td>
        <td align="left" valign="top"></td>
        <td align="left" valign="top"><img src="hotels/pp.jpg" alt="flights" width="319px" height="319px"></td>
      </tr>
      <tr>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
        <td height="10" align="left" valign="top"></td>
      </tr>
    </tbody></table></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  <tr>
    <td height="10" align="left" valign="top"></td>
    <td height="10" align="left" valign="top" background="images/small-line.gif"></td>
    <td height="10" align="left" valign="top"></td>
  </tr>
  </tbody>
</asp:Content>

