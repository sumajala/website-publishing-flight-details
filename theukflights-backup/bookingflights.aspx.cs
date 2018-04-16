using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class bookingflights : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
  
                if (Session["ddl_f_f"] == null && Session["txt_f_t"] == null && Session["txt_f_d_d"] == null && Session["txt_f_r_d"] == null && Session["code_ddl_f_f"] == null && Session["code_ddl_f_t"] == null && Session["d-a"] == null && Session["d-c"] == null && Session["d-i"] == null && Session["guid"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                if (Session["guid"] != null)
                {
                   lbl_guid.Text= Session["guid"].ToString();
                }

                if (Session["ddl_f_f"] != null)
                {
                    lblDestinationfrom.Text = Session["ddl_f_f"].ToString();
                }
                if (Session["txt_f_t"] != null)
                {
                    lbl_dest_to.Text = Session["txt_f_t"].ToString();
                }
                if (Session["txt_f_d_d"] != null)
                {
                    Lbl_depdate.Text = Session["txt_f_d_d"].ToString();
                }
                if (Session["txt_f_r_d"] != null)
                {
                    lblrdate.Text = Session["txt_f_r_d"].ToString();
                }
                if (Session["code_ddl_f_f"] != null)
                {
                    lbl_codedf.Text = Session["code_ddl_f_f"].ToString();
                }
                if (Session["code_ddl_f_t"] != null)
                {
                    lbl_codedf.Text = Session["code_ddl_f_t"].ToString();
                }

                if (Session["d-a"]!=null)
                {
                    lbl_Adult.Text = Session["d-a"].ToString();
                    bf_adultno.Text = Session["d-a"].ToString();
                }

                if (Session["d-c"] != null)
                {
                    lbl_child.Text = Session["d-c"].ToString();
                    bf_childno.Text = Session["d-c"].ToString();
                }

                if (Session["d-i"] != null)
                {
                    lbl_infant.Text = Session["d-i"].ToString();
                    bf_infantno.Text = Session["d-i"].ToString();
                }

            Sid1DepartTime.Text = Session["slbl_Sid1DeptTime1"].ToString();
            Sid1DepartDate.Text = Session["slbl_Sid1Deptdate1"].ToString();
            Sid1DepartCity.Text = Session["slblSid1_DeparturefromPlace1e"].ToString();
            Sid1Airlinenames.Text = Session["slbl_Sid1DAirlinename1"].ToString();
            lbl_Sid1DepartureAirport.Text = Session["slbl_Sid1DepartureAirport"].ToString();
            lbl_Sid1Arrivalairport.Text = Session["slbl_Sid1Arrivalairport"].ToString();
            //Session["slbl_Sid1DAircode1"] 
            Sid1FlightNo.Text = Session["slbl_Sid1FlightNo1"].ToString();
            Sid1ArrivalTime.Text = Session["slbl_Sid1Arrivaltime1"].ToString();
            Sid1ArrivalDate.Text = Session["slbl_Sid1Arrivaldate1"].ToString();
            Sid1ArrivalCity.Text = Session["slbl_Sid1Arrivalplace1"].ToString();
            Label3.Text = Session["slbl_Sid2DepartureAirport"].ToString();
            Label5.Text = Session["slbl_Sid2Arrivalairport"].ToString();

            //sessions seg2
            Sid2Departtime.Text = Session["slbl_Sid2Depttime2"].ToString();
            Sid2DepartDate.Text = Session["slbl_lbl_Sid2Deptdate2"].ToString();
            Sid2DepartCity.Text = Session["slblSid2_DeparturefromPlace2"].ToString();
            Sid2Airlines.Text = Session["slbl_Sid2DAirlinename2"].ToString();

            //Session["slbl_Sid2DAircode2"] 
            Sid2flightno.Text = Session["slbl_Sid2DAirNo2"].ToString();
            Sid2Arrivaltime.Text = Session["slbl_Sid2Arrivaltime2"].ToString();
            Sid2ArrivalDate.Text = Session["slbl_Sid2Arrivaldate2"].ToString();
            Sid2ArrivalCity.Text = Session["slbl_Sid3RArrivalplace2"].ToString();
            //sessions seg3
            Sid3RDeparttime.Text = Session["slbl_Sid3RDepttime3"].ToString();
            Sid3RDepartDate.Text = Session["slbl_Sid3RDeptdate3"].ToString();
            Sid3RDepartCity.Text = Session["slblSid3_RDeparturefromPlace3"].ToString();
            Sid3RAirlines.Text = Session["slbl_RSid3DAirlinename3"].ToString();
            Label6.Text = Session["slbl_Sid3DepartureAirport"].ToString();
            Label7.Text=Session["slbl_Sid3Arrivalairport"].ToString();
            //Session["slbl_Sid3RDAircode3"] 
            Sid3RFlightno.Text = Session["slbl_Sid3RDAirNo3"].ToString();
            Sid3RArrivaltime.Text = Session["slbl_Sid3RArrivaltime3"].ToString();
            Sid3RArrivalDate.Text = Session["slbl_Sid3RArrivaldate3"].ToString();
            Sid3RArrivalcity.Text = Session["slblSid3RArrivalAirportname3"].ToString();
            //Sessions seg4
            Sid4RDeparttime.Text = Session["slbl_Sid4RDepttime4"].ToString();
            Sid4RDepartDate.Text = Session["slbl_Sid4RDeptdate4"].ToString();
            Sid4RDepartCity.Text = Session["slblSid4_RDeparturefromPlace4"].ToString();
            Sid4RAirlines.Text = Session["slbl_RSid4DAirlinename4"].ToString();
            //Session["slbl_Sid4RDAircode4"] 
            sid4RFlightno.Text = Session["slbl_Sid4RDAirNo4"].ToString();
            Sid4RArrivaltime.Text = Session["slbl_Sid4RArrivaltime4"].ToString();
            Sid4RArrivaltime.Text = Session["slbl_Sid4RArrivaldate4"].ToString();
            Sid4RArrivalcity.Text = Session["slbl_Sid4RArrivalplace4"].ToString();
            
            Label9.Text= Session["slbl_Sid4DepartureAirport"].ToString();
            Label10.Text= Session["slbl_Sid4Arrivalairport"].ToString();
            Literal1.Text = Session["d-a"].ToString();//no of adults
            Literal2.Text = Session["d-c"].ToString();// no of childs
            Literal3.Text = Session["d-i"].ToString();// no of infants

            lbl_adultfare.Text = Session["sAdultfare"].ToString();
            lbl_childfare.Text="0";
            lbl_infantfare.Text = "0";
            lblbfTotalPrice.Text = Session["slblTotalprice"].ToString();

            string totalfare = lblbfTotalPrice.Text;
            string atolamount = lblAtolprice.Text;

            decimal total = 0;
            decimal atol = 0;

            total = Convert.ToDecimal(totalfare);
            atol = Convert.ToDecimal(atolamount);
             decimal final=(total + atol);
             lblFinalToatalprice.Text = final.ToString();

             if (Convert.ToInt32(Literal2.Text) > 0)
             {
                 lbl_childfare.Text = Session["schildfare"].ToString();
             }

             if (Convert.ToInt32(Literal3.Text) > 0)
             {
                 lbl_infantfare.Text = Session["sinfantfare"].ToString();
             }

            for (int i = 1; i <= Convert.ToInt32(Literal1.Text); i++)
            {
                DropDownList ddltitle = new DropDownList();
                
                // ddltitle.ID=ctrltitle;
                ddltitle.ID = "title_" + i.ToString();
                ddltitle.Width = 120;
                ddltitle.Items.Add(new ListItem("Mr", "Mr"));
                ddltitle.Items.Add(new ListItem("Mrs", "Mrs"));
                ddltitle.Items.Add(new ListItem("Miss", "Miss"));
                ddltitle.Items.Add(new ListItem("Ms", "Ms"));
                ddltitle.Items.Add(new ListItem("Mstr", "Mstr"));
                ddltitle.Items.Add(new ListItem("Dr", "Dr"));
                ddltitle.Attributes.Add("runat", "Server");
                ddltitle.EnableViewState = true;

                pnlAdult.Controls.Add(ddltitle);

                TextBox txtname = new TextBox();
                txtname.ID = "txtName_" + i.ToString();
                txtname.Attributes.Add("runat", "Server");
                RequiredFieldValidator txtnamerqf = new RequiredFieldValidator();
                txtnamerqf.ErrorMessage = "Please Enter Adult Full Name";
                txtnamerqf.Text = "*";
                txtnamerqf.ControlToValidate = "txtName_" + i.ToString();
                txtnamerqf.ValidationGroup = "bookingrfv";
                txtname.EnableViewState = true;
                pnlAdult.Controls.Add(txtname);
                pnlAdult.Controls.Add(txtnamerqf);

                TextBox txtsurname = new TextBox();
                txtsurname.ID = "txtsurname_" + i.ToString();
                txtsurname.Attributes.Add("runat", "Server");
                RequiredFieldValidator txtsurnamerqf = new RequiredFieldValidator();
                txtsurnamerqf.ErrorMessage = "Please Enter Adult Surname";
                txtsurnamerqf.Text = "*";
                txtsurnamerqf.ControlToValidate = "txtsurname_" + i.ToString();
                txtsurnamerqf.ValidationGroup = "bookingrfv";
                txtsurname.EnableViewState = true;
                pnlAdult.Controls.Add(txtsurname);
                pnlAdult.Controls.Add(txtsurnamerqf);

                TextBox txtdateofbirth = new TextBox();
                txtdateofbirth.ID = "txtDOB_" + i.ToString();
                txtdateofbirth.Attributes.Add("runat", "Server");
                txtdateofbirth.EnableViewState = true;
                AjaxControlToolkit.CalendarExtender ajaxcal = new AjaxControlToolkit.CalendarExtender();
                ajaxcal.ID = "ajaxCalendar_" + i.ToString();
                ajaxcal.Format = "dd/MM/yyyy";
                RequiredFieldValidator txtDOBrqf = new RequiredFieldValidator();
                txtDOBrqf.ErrorMessage = "Please Enter Adult DOB";
                txtDOBrqf.Text = "*";
                txtDOBrqf.ControlToValidate = "txtDOB_" + i.ToString();
                txtDOBrqf.ValidationGroup = "bookingrfv";
                ajaxcal.TargetControlID = txtdateofbirth.ID;
                pnlAdult.Controls.Add(txtdateofbirth);
                pnlAdult.Controls.Add(ajaxcal);
                pnlAdult.Controls.Add(txtDOBrqf);

                DropDownList ddlsex = new DropDownList();
                ddlsex.Width = 120;
                ddlsex.ID = "ddlsex_" + i.ToString();
                ddlsex.EnableViewState = true;
                ddlsex.Attributes.Add("runat", "Server");
                ddlsex.Items.Add(new ListItem("Male", "Male"));
                ddlsex.Items.Add(new ListItem("Female", "Female"));
                pnlAdult.Controls.Add(ddlsex);

                Literal lt = new Literal();
                lt.Text = "<br />";
                pnlAdult.Controls.Add(lt);

            }
            Panelchild.Visible = false;
            if (Convert.ToInt32(Literal2.Text) > 0)
            {
                Panelchild.Visible = true;

                for (int j = 0; j < Convert.ToInt32(Literal2.Text); j++)
                {
                    DropDownList ddltitle = new DropDownList();
                    ddltitle.ID = "titlej_" + j.ToString();
                    ddltitle.Width = 120;
                   // ddltitle.EnableViewState = true;
                    ddltitle.Items.Add(new ListItem("Mr", "Mr"));
                    ddltitle.Items.Add(new ListItem("Mrs", "Mrs"));
                    ddltitle.Items.Add(new ListItem("Ms", "Ms"));
                    ddltitle.Items.Add(new ListItem("Mstr", "Mstr"));
                    ddltitle.Items.Add(new ListItem("Dr", "Dr"));
                    Panelchild.Controls.Add(ddltitle);
                    TextBox txtnamej = new TextBox();
                    txtnamej.ID = "txtnamej_" + j.ToString();
                   // txtnamej.EnableViewState = true;
                    RequiredFieldValidator txtnamejrqf = new RequiredFieldValidator();
                    txtnamejrqf.ErrorMessage = "Please Enter Child Full Name";
                    txtnamejrqf.Text = "*";
                    txtnamejrqf.ControlToValidate = "txtnamej_" + j.ToString();
                    txtnamejrqf.ValidationGroup = "bookingrfv";
                    Panelchild.Controls.Add(txtnamej);
                    Panelchild.Controls.Add(txtnamejrqf);

                    TextBox txtsurnamej = new TextBox();
                    txtsurnamej.ID = "txtsurnamej_" + j.ToString();
                   // txtsurnamej.EnableViewState = true;
                    txtsurnamej.Attributes.Add("runat", "Server");
                    RequiredFieldValidator txtsurnamejrqf = new RequiredFieldValidator();
                    txtsurnamejrqf.ErrorMessage = "Please Enter Child Surname";
                    txtsurnamejrqf.Text = "*";
                    txtsurnamejrqf.ControlToValidate = "txtsurnamej_" + j.ToString();
                    txtsurnamejrqf.ValidationGroup = "bookingrfv";
                    Panelchild.Controls.Add(txtsurnamej);
                    Panelchild.Controls.Add(txtsurnamejrqf);

                    TextBox txtdateofbirthj = new TextBox();
                    txtdateofbirthj.ID = "txtDOBj_" + j.ToString();
                   // txtdateofbirthj.EnableViewState = true;
                    txtdateofbirthj.Attributes.Add("runat", "Server");
                    AjaxControlToolkit.CalendarExtender ajaxcal = new AjaxControlToolkit.CalendarExtender();
                    ajaxcal.ID = "txtDOBaj_" + j.ToString();
                    ajaxcal.Format = "dd/MM/yyyy";
                    RequiredFieldValidator txtDOBjrqf = new RequiredFieldValidator();
                    txtDOBjrqf.ErrorMessage = "Please Enter Child DOB";
                    txtDOBjrqf.Text = "*";
                    txtDOBjrqf.ControlToValidate = "txtDOBj_" + j.ToString();
                    txtDOBjrqf.ValidationGroup = "bookingrfv";
                    ajaxcal.TargetControlID = txtdateofbirthj.ID;
                    Panelchild.Controls.Add(txtdateofbirthj);
                    Panelchild.Controls.Add(ajaxcal);
                    Panelchild.Controls.Add(txtDOBjrqf);

                    DropDownList ddlsexj = new DropDownList();
                    ddlsexj.ID = "ddlsexj_" + j.ToString();
                  //  ddlsexj.EnableViewState = true;
                    ddlsexj.Width = 120;
                    ddlsexj.Items.Add(new ListItem("Male", "Male"));
                    ddlsexj.Items.Add(new ListItem("Female", "Female"));
                    Panelchild.Controls.Add(ddlsexj);

                    Literal lt = new Literal();
                    lt.Text = "<br />";
                    Panelchild.Controls.Add(lt);
                }
            }

            PanelInfant.Visible = false;
            if (Convert.ToInt32(Literal3.Text) > 0)
            {
                PanelInfant.Visible = true;

                for (int k = 0; k < Convert.ToInt32(Literal3.Text); k++)
                {
                    DropDownList ddltitlek = new DropDownList();
                    ddltitlek.Width = 120;
                  //  ddltitlek.EnableViewState = true;
                    ddltitlek.Items.Add(new ListItem("Mr", "Mr"));
                    ddltitlek.Items.Add(new ListItem("Mrs", "Mrs"));
                    ddltitlek.Items.Add(new ListItem("Miss", "Miss"));
                    ddltitlek.Items.Add(new ListItem("Ms", "Ms"));
                    ddltitlek.Items.Add(new ListItem("Mstr", "Mstr"));
                    ddltitlek.Items.Add(new ListItem("Dr", "Dr"));
                    PanelInfant.Controls.Add(ddltitlek);

                    TextBox txtnamek = new TextBox();
                    txtnamek.ID = "txtnamek_" + k.ToString();
                   // txtnamek.EnableViewState = true;
                    RequiredFieldValidator txtnamekrqf = new RequiredFieldValidator();
                    txtnamekrqf.ErrorMessage = "Please Enter Infant Full Name";
                    txtnamekrqf.Text = "*";
                    txtnamekrqf.ControlToValidate = "txtnamek_" + k.ToString();
                    txtnamekrqf.ValidationGroup = "bookingrfv";
                    PanelInfant.Controls.Add(txtnamek);
                    PanelInfant.Controls.Add(txtnamekrqf);

                    TextBox txtsurnamek = new TextBox();
                    txtsurnamek.ID = "txtsurnamek_" + k.ToString();
                  //  txtsurnamek.EnableViewState = true;
                    txtsurnamek.Attributes.Add("runat", "Server");
                    RequiredFieldValidator txtsurnamekrqf = new RequiredFieldValidator();
                    txtsurnamekrqf.ErrorMessage = "Please Enter Infant Surname";
                    txtsurnamekrqf.Text = "*";
                    txtsurnamekrqf.ControlToValidate = "txtsurnamek_" + k.ToString();
                    txtsurnamekrqf.ValidationGroup = "bookingrfv";
                    PanelInfant.Controls.Add(txtsurnamek);
                    PanelInfant.Controls.Add(txtsurnamekrqf);

                    TextBox txtdateofbirthk = new TextBox();
                    txtdateofbirthk.ID = "txtDOBk_" + k.ToString();
                   // txtdateofbirthk.EnableViewState = true;
                    txtdateofbirthk.Attributes.Add("runat", "Server");
                    AjaxControlToolkit.CalendarExtender ajaxcal = new AjaxControlToolkit.CalendarExtender();
                    ajaxcal.ID = "txtDOBak_" + k.ToString();
                    ajaxcal.Format = "dd/MM/yyyy";
                    RequiredFieldValidator txtDOBkrqf = new RequiredFieldValidator();
                    txtDOBkrqf.ErrorMessage = "Please Enter Infant DOB";
                    txtDOBkrqf.Text = "*";
                    txtDOBkrqf.ControlToValidate = "txtDOBk_" + k.ToString();
                    txtDOBkrqf.ValidationGroup = "bookingrfv";
                    ajaxcal.TargetControlID = txtdateofbirthk.ID;
                    PanelInfant.Controls.Add(txtdateofbirthk);
                    PanelInfant.Controls.Add(ajaxcal);
                    PanelInfant.Controls.Add(txtDOBkrqf);

                    DropDownList ddlsexk = new DropDownList();
                    ddlsexk.Width = 120;
                   // ddlsexk.EnableViewState = true;
                    ddlsexk.ID = "ddlsexk_" + k.ToString();
                    ddlsexk.Items.Add(new ListItem("Male", "Male"));
                    ddlsexk.Items.Add(new ListItem("Female", "Female"));
                    PanelInfant.Controls.Add(ddlsexk);
                    
                    Literal lt = new Literal();
                    lt.Text = "<br />";
                    PanelInfant.Controls.Add(lt);
                }
            }
    }

    protected void img_reg_Click(object sender, ImageClickEventArgs e)
    {
        long ticks = DateTime.Now.Ticks;
        byte[] bytes = BitConverter.GetBytes(ticks);
        string id = Convert.ToBase64String(bytes).Replace('+', '_').Replace('/', '-').TrimEnd('=');
        lbl_bookRef.Text = id.ToString();
        Session["payAmount"] = lblFinalToatalprice.Text;
        Session["bookid"] = lbl_bookRef.Text;
       // Server.Transfer("pay.aspx");
        string controlid = string.Empty;
        string contralid1 = string.Empty;
        string Controlid3=string.Empty;
        string Controlid4=string.Empty;
        string Controlid5=string.Empty;

        for (int i = 0; i <= pnlAdult.Controls.Count; i++)
        {
            contralid1 = "title_" + i.ToString();
            controlid = "txtName_" + i.ToString();
            Controlid3 = "txtsurname_" + i.ToString();     
            Controlid4 = "txtDOB_" + i.ToString();
            Controlid5 = "ddlsex_" + i.ToString();

            DropDownList dbtitle = pnlAdult.FindControl(contralid1) as DropDownList;
            TextBox tbn = pnlAdult.FindControl(controlid) as TextBox;
            TextBox tbsn = pnlAdult.FindControl(Controlid3) as TextBox;
            TextBox tbdob= pnlAdult.FindControl(Controlid4) as TextBox;
            DropDownList dbsex = pnlAdult.FindControl(Controlid5) as DropDownList;

            if (tbn != null && dbtitle != null && tbsn != null && tbdob != null && dbsex != null)
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO pax_personinfo (BookReferenceID,Title,FirstName,SurName,DateofBirth,Sex,PaxType) VALUES(@BookReferenceID,@Title,@FirstName,@SurName,@DateofBirth,@Sex,@PaxType)"))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@BookReferenceID",lbl_bookRef.Text);
                        cmd.Parameters.AddWithValue("@Title",dbtitle.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@FirstName",tbn.Text);
                        cmd.Parameters.AddWithValue("@SurName",tbsn.Text);
                        cmd.Parameters.AddWithValue("@DateofBirth",tbdob.Text);
                        cmd.Parameters.AddWithValue("@Sex",dbsex.Text);
                        cmd.Parameters.AddWithValue("@PaxType",lbla.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

            }
        }
        if (Convert.ToInt32(Literal2.Text) > 0)
        {

            string C1 = string.Empty;
            string C2 = string.Empty;
            string C3 = string.Empty;
            string C4 = string.Empty;
            string C5 = string.Empty;
            for (int j = 0; j <= Panelchild.Controls.Count; j++)
            {
                C1 = "titlej_" + j.ToString();
                C2 = "txtnamej_" + j.ToString();
                C3 = "txtsurnamej_" + j.ToString();
                C4 = "txtDOBj_" + j.ToString();
                C5 = "ddlsexj_" + j.ToString();

                DropDownList dbtitle1 = pnlAdult.FindControl(C1) as DropDownList;
                TextBox tbn1 = pnlAdult.FindControl(C2) as TextBox;
                TextBox tbsn1 = pnlAdult.FindControl(C3) as TextBox;
                TextBox tbdob1 = pnlAdult.FindControl(C4) as TextBox;
                DropDownList dbsex1 = pnlAdult.FindControl(C5) as DropDownList;

                if (tbn1 != null && dbtitle1 != null && tbsn1 != null && tbdob1 != null && dbsex1 != null)
                {
                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand("INSERT INTO pax_personinfo (BookReferenceID,Title,FirstName,SurName,DateofBirth,Sex,PaxType) VALUES(@BookReferenceID,@Title,@FirstName,@SurName,@DateofBirth,@Sex,@PaxType)"))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@BookReferenceID", lbl_bookRef.Text);
                            cmd.Parameters.AddWithValue("@Title", dbtitle1.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@FirstName", tbn1.Text);
                            cmd.Parameters.AddWithValue("@SurName", tbsn1.Text);
                            cmd.Parameters.AddWithValue("@DateofBirth", tbdob1.Text);
                            cmd.Parameters.AddWithValue("@Sex", dbsex1.Text);
                            cmd.Parameters.AddWithValue("@PaxType", lblc.Text);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                }
            }
        }

        if (Convert.ToInt32(Literal3.Text) > 0)
        {
            string Ck1 = string.Empty;
            string Ck2 = string.Empty;
            string Ck3 = string.Empty;
            string Ck4 = string.Empty;
            string Ck5 = string.Empty;
            for (int k = 0; k <= PanelInfant.Controls.Count; k++)
            {
               // TextBox mytxt = (TextBox)Panel2.FindControl("txt1");
                DropDownList dbtitlek1 = pnlAdult.FindControl(Ck1) as DropDownList;
                TextBox tbnk1 = pnlAdult.FindControl(Ck2) as TextBox;
                TextBox tbsnk1 = pnlAdult.FindControl(Ck3) as TextBox;
                TextBox tbdobk1 = pnlAdult.FindControl(Ck4) as TextBox;
                DropDownList dbsexk1 = pnlAdult.FindControl(Ck5) as DropDownList;

                if (tbnk1 != null && dbtitlek1 != null && tbsnk1 != null && tbdobk1 != null && dbsexk1 != null)
                {
                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand("INSERT INTO pax_personinfo (BookReferenceID,Title,FirstName,SurName,DateofBirth,Sex,PaxType) VALUES(@BookReferenceID,@Title,@FirstName,@SurName,@DateofBirth,@Sex,@PaxType)"))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@BookReferenceID", lbl_bookRef.Text);
                            cmd.Parameters.AddWithValue("@Title", dbtitlek1.SelectedItem.Text);
                            cmd.Parameters.AddWithValue("@FirstName", tbnk1.Text);
                            cmd.Parameters.AddWithValue("@SurName", tbsnk1.Text);
                            cmd.Parameters.AddWithValue("@DateofBirth", tbdobk1.Text);
                            cmd.Parameters.AddWithValue("@Sex", dbsexk1.Text);
                            cmd.Parameters.AddWithValue("@PaxType", lbli.Text);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();

                        }
                    }

                }
            }
        }

        if (txt_Homephone.Text != null && postalcode.Text != null && txt_Mobilenumber.Text != null && txt_Emailaddress.Text != null)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tbl_BookPersonInfo (BookReferenceID,HomeAddress,PostalCode,MobileNo,EmailAddress,NoAdults,NoChild,NoInfant,AdultPrice,ChildPrice,InfantPrice,AtolPrice,TotalPrice) VALUES(@BookReferenceID,@HomeAddress,@PostalCode,@MobileNo,@EmailAddress,@NoAdults,@NoChild,@NoInfant,@AdultPrice,@ChildPrice,@InfantPrice,@AtolPrice,@TotalPrice)"))
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@BookReferenceID", lbl_bookRef.Text);
                    cmd.Parameters.AddWithValue("@HomeAddress",txt_Homephone.Text);
                    cmd.Parameters.AddWithValue("@PostalCode",postalcode.Text);
                    cmd.Parameters.AddWithValue("@MobileNo",txt_Mobilenumber.Text);
                    cmd.Parameters.AddWithValue("@EmailAddress",txt_Emailaddress.Text);
                    cmd.Parameters.AddWithValue("@NoAdults",lbl_Adult.Text);
                    cmd.Parameters.AddWithValue("@NoChild", lbl_child.Text);
                    cmd.Parameters.AddWithValue("@NoInfant",lbl_infant.Text);
                    cmd.Parameters.AddWithValue("@AdultPrice",lbl_adultfare.Text);
                    cmd.Parameters.AddWithValue("@ChildPrice", lbl_childfare.Text);
                    cmd.Parameters.AddWithValue("@InfantPrice",lbl_infantfare.Text);
                    cmd.Parameters.AddWithValue("@AtolPrice", lblAtolprice.Text);
                    cmd.Parameters.AddWithValue("@TotalPrice", lblFinalToatalprice.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
       Response.Redirect("paysecure.aspx");
    }
}