using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flightsresults : System.Web.UI.Page
{
    private int PageSize = 5;
    protected void Page_Load(object sender, EventArgs e)
    {

        DataList1.ItemCommand += new DataListCommandEventHandler(DataList1_ItemCommand);
        if (!Page.IsPostBack)
        {
            if (Session["ddl_f_f"] == null && Session["ddl_f_f"] == null && Session["code_ddl_f_f"] == null && Session["code_ddl_f_t"] == null)
            {
                Response.Redirect("Default.aspx");
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
                lbl_codedtf.Text = Session["code_ddl_f_t"].ToString();
            }
            if (Session["d-a"] != null)
            {
                lbl_Adult.Text = Session["d-a"].ToString();
            }

            if (Session["d-c"] != null)
            {
                lbl_child.Text = Session["d-c"].ToString();

            }

            if (Session["d-i"] != null)
            {
                lbl_infant.Text = Session["d-i"].ToString();
            }

          this.BindGrid(1);
        }

    }
    protected void rbtn_one_return_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbtn_one_return.SelectedIndex == 0)
        {
            // txt_flight_return.Enabled = true;
            txt_flight_return.Visible = true;
            txt_flight_return.ReadOnly = true;
            txt_flight_return_CalendarExtender.Enabled = true;
            // txt_flight_return_TextBoxWatermarkExtender.Enabled = true;
        }
        else
        {
            txt_flight_return.Visible = false;
            txt_flight_return.ReadOnly = false;
            txt_flight_return_CalendarExtender.Enabled = false;
            // txt_flight_return_TextBoxWatermarkExtender.Enabled = false;
            // txt_flight_return.Enabled = false;

        }
    }
    private void BindGrid(int pageIndex)
    {
        DataTable dt = new DataTable();
        string connect = WebConfigurationManager.ConnectionStrings["Travelpathconn"].ConnectionString;
        SqlConnection con1 = new SqlConnection(connect);
        //SqlCommand cmd = new SqlCommand("GetFlightDetailsONESTOP", con1);
        SqlCommand cmd = new SqlCommand("GetCustomersPageWise", con1);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", PageSize);
        cmd.Parameters.Add("@Sid1DepartAirport", SqlDbType.Int).Value = lbl_codedf.Text;
        cmd.Parameters.Add("@Sid3RDepartAirport", SqlDbType.Int).Value = lbl_codedtf.Text;
        cmd.Parameters.Add("@Sid1DeptDate", SqlDbType.VarChar).Value = Lbl_depdate.Text.Trim();
        cmd.Parameters.Add("@Sid3RDepartDate", SqlDbType.VarChar).Value = lblrdate.Text.Trim();
        // cmd.Parameters.Add("@OSAdultFare", SqlDbType.Decimal).Value = lbl_Adult.Text.Trim();
        // cmd.Parameters.Add("@OSChildFare", SqlDbType.Decimal).Value = lbl_child.Text.Trim();
        //cmd.Parameters.Add("@OSInfantFare", SqlDbType.Decimal).Value = lbl_infant.Text.Trim();
        cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4);
        cmd.Parameters["@RecordCount"].Direction = ParameterDirection.Output;
        con1.Open();
        IDataReader idr = cmd.ExecuteReader();
        DataList1.DataSource = idr;
        DataList1.DataBind();
        idr.Close();
        con1.Close();
        int recordCount = Convert.ToInt32(cmd.Parameters["@RecordCount"].Value);
        this.PopulatePager(recordCount, pageIndex);

        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //PagedDataSource pds = new PagedDataSource();
        //pds.DataSource = dt.DefaultView;
        //da.Fill(dt);
        //pds.AllowPaging = true;
        //pds.PageSize = 50;
        //pds.CurrentPageIndex = CurrentPage;
        //ViewState["TotalPages"] = pds.PageCount;
        //DataList1.DataSource = pds;
        //DataList1.DataBind();

        if (DataList1.Items.Count == 0)
        {
            DataList1.Visible = false;
            lblmessage.Visible = true;
            lblmessage.Text = "No Record Found.";
        }

    }
    private void PopulatePager(int recordCount, int currentPage)
    {
        List<ListItem> pages = new List<ListItem>();
        int startIndex, endIndex;
        int pagerSpan = 5;

        //Calculate the Start and End Index of pages to be displayed.
        double dblPageCount = (double)((decimal)recordCount / Convert.ToDecimal(PageSize));
        int pageCount = (int)Math.Ceiling(dblPageCount);
        startIndex = currentPage > 1 && currentPage + pagerSpan - 1 < pagerSpan ? currentPage : 1;
        endIndex = pageCount > pagerSpan ? pagerSpan : pageCount;
        if (currentPage > pagerSpan % 2)
        {
            if (currentPage == 2)
            {
                endIndex = 5;
            }
            else
            {
                endIndex = currentPage + 2;
            }
        }
        else
        {
            endIndex = (pagerSpan - currentPage) + 1;
        }

        if (endIndex - (pagerSpan - 1) > startIndex)
        {
            startIndex = endIndex - (pagerSpan - 1);
        }

        if (endIndex > pageCount)
        {
            endIndex = pageCount;
            startIndex = ((endIndex - pagerSpan) + 1) > 0 ? (endIndex - pagerSpan) + 1 : 1;
        }

        //Add the First Page Button.
        if (currentPage > 1)
        {
            pages.Add(new ListItem("First", "1"));
        }

        //Add the Previous Button.
        if (currentPage > 1)
        {
            pages.Add(new ListItem("<<", (currentPage - 1).ToString()));
        }

        for (int i = startIndex; i <= endIndex; i++)
        {
            pages.Add(new ListItem(i.ToString(), i.ToString(), i != currentPage));
        }

        //Add the Next Button.
        if (currentPage < pageCount)
        {
            pages.Add(new ListItem(">>", (currentPage + 1).ToString()));
        }

        //Add the Last Button.
        if (currentPage != pageCount)
        {
            pages.Add(new ListItem("Last", pageCount.ToString()));
        }
        rptPager.DataSource = pages;
        rptPager.DataBind();
    }

    protected void Page_Changed(object sender, EventArgs e)
    {
        int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
        this.BindGrid(pageIndex);
    }
    //public int CurrentPage
    //{
    //    get
    //    {
    //        if (this.ViewState["CurrentPage"] == null)
    //            return 0;
    //        else
    //            return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
    //    }
    //    set
    //    {
    //        this.ViewState["CurrentPage"] = value;
    //    }
    //}

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs ea)
    {
        int aa = 0;
        int bb = 0;
        int cc = 0;
        Label AdultFare = (Label)ea.Item.FindControl("lbladultfare"); // FindControl Gets aspx controls inside the datalist by fare
        Label ChildFare = (Label)ea.Item.FindControl("lblchildfare");
        Label InfantFare = (Label)ea.Item.FindControl("lblinfantfare"); // FindControl Gets aspx controls inside the datalist by fare
        Label lblTotalprice = (Label)ea.Item.FindControl("lblTotalprice");

        Label nofoadults = (Label)ea.Item.FindControl("lbl_Adult");
        Label noofchild = (Label)ea.Item.FindControl("lbl_child");
        Label noofinfant = (Label)ea.Item.FindControl("lbl_infant");

        int a = Convert.ToInt32(AdultFare.Text);
        int b = Convert.ToInt32(ChildFare.Text);
        int c = Convert.ToInt32(InfantFare.Text);

        string adut = lbl_Adult.Text;
        string child = lbl_child.Text;
        string infant = lbl_infant.Text;

        aa = Convert.ToInt32(adut);
        bb = Convert.ToInt32(child);
        cc = Convert.ToInt32(infant);

        int d = (a * aa) + (b * bb) + (c * cc);

        lblTotalprice.Text = Convert.ToString(d);

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs ea)
    {
        if (ea.CommandName.Equals("Save"))
        {
            //seg-1
            Label lbl_Sid1DeptTime1 = (Label)ea.Item.FindControl("lbl_Sid1Depttime");
            Label lbl_Sid1Deptdate1 = (Label)ea.Item.FindControl("lbl_Sid1Deptdate");
            Label lblSid1_DeparturefromPlace1 = (Label)ea.Item.FindControl("lblSid1_DeparturefromPlace");
            //airportname
            Label lbl_Sid1DepartureAirport = (Label)ea.Item.FindControl("lbl_Sid1DepartureAirport");
            Label lbl_Sid1DAirlinename1 = (Label)ea.Item.FindControl("lbl_Sid1DAirlinename");
            Label lbl_Sid1DAircode1 = (Label)ea.Item.FindControl("lbl_Sid1DAircode");
            Label lbl_Sid1FlightNo1 = (Label)ea.Item.FindControl("lbl_Sid1FlightNo");
            Label lbl_Sid1Arrivaltime1 = (Label)ea.Item.FindControl("lbl_Sid1Arrivaltime");
            Label lbl_Sid1Arrivaldate1 = (Label)ea.Item.FindControl("lbl_Sid1Arrivaldate");
            Label lbl_Sid1Arrivalplace1 = (Label)ea.Item.FindControl("lbl_Sid1Arrivalplace");
            //airportname arrival
            Label lbl_Sid1Arrivalairport = (Label)ea.Item.FindControl("lbl_Sid1Arrivalairport");
            //seg-2
            Label lbl_Sid2Depttime2 = (Label)ea.Item.FindControl("lbl_Sid2Depttime");
            Label lbl_lbl_Sid2Deptdate2 = (Label)ea.Item.FindControl("lbl_Sid2Deptdate");
            Label lblSid2_DeparturefromPlace2 = (Label)ea.Item.FindControl("lblSid2_DeparturefromPlace");
            Label lbl_Sid2DAirlinename2 = (Label)ea.Item.FindControl("lbl_Sid2DAirlinename");
            Label lbl_Sid2DAircode2 = (Label)ea.Item.FindControl("lbl_Sid2DAircode");
            Label lbl_Sid2DAirNo2 = (Label)ea.Item.FindControl("lbl_Sid2DAirNo");
            Label lbl_Sid2Arrivaltime2 = (Label)ea.Item.FindControl("lbl_Sid2Arrivaltime");
            Label lbl_Sid2Arrivaldate2 = (Label)ea.Item.FindControl("lbl_Sid2Arrivaldate");
            Label lbl_Sid3RArrivalplace2 = (Label)ea.Item.FindControl("lbl_Sid3RArrivalplace");
            //airportname
            Label Label3 = (Label)ea.Item.FindControl("Label3");
            Label Label5 = (Label)ea.Item.FindControl("Label5");
            //seg-3
            Label lbl_Sid3RDepttime3 = (Label)ea.Item.FindControl("lbl_Sid3RDepttime");
            Label lbl_Sid3RDeptdate3 = (Label)ea.Item.FindControl("lbl_Sid3RDeptdate");
            Label lblSid3_RDeparturefromPlace3 = (Label)ea.Item.FindControl("lblSid3_RDeparturefromPlace");
            Label lbl_RSid3DAirlinename3 = (Label)ea.Item.FindControl("lbl_RSid3DAirlinename");
            Label lbl_Sid3RDAircode3 = (Label)ea.Item.FindControl("lbl_Sid3RDAircode");
            Label lbl_Sid3RDAirNo3 = (Label)ea.Item.FindControl("lbl_Sid3RDAirNo");
            Label lbl_Sid3RArrivaltime3 = (Label)ea.Item.FindControl("lbl_Sid3RArrivaltime");
            Label lbl_Sid3RArrivaldate3 = (Label)ea.Item.FindControl("lbl_Sid3RArrivaldate");
            Label lblSid3RArrivalAirportname3 = (Label)ea.Item.FindControl("lblSid3RArrivalAirportname");
            // airportnames
            Label Label6 = (Label)ea.Item.FindControl("Label6");
            Label Label7 = (Label)ea.Item.FindControl("Label7");
            //seg---4
            Label lbl_Sid4RDepttime4 = (Label)ea.Item.FindControl("lbl_Sid4RDepttime");
            Label lbl_Sid4RDeptdate4 = (Label)ea.Item.FindControl("lbl_Sid4RDeptdate");
            Label lblSid4_RDeparturefromPlace4 = (Label)ea.Item.FindControl("lblSid4_RDeparturefromPlace");
            Label lbl_RSid4DAirlinename4 = (Label)ea.Item.FindControl("lbl_RSid4DAirlinename");
            Label lbl_Sid4RDAircode4 = (Label)ea.Item.FindControl("lbl_Sid4RDAircode");
            Label lbl_Sid4RDAirNo4 = (Label)ea.Item.FindControl("lbl_Sid4RDAirNo");
            Label lbl_Sid4RArrivaltime4 = (Label)ea.Item.FindControl("lbl_Sid4RArrivaltime");
            Label lbl_Sid4RArrivaldate4 = (Label)ea.Item.FindControl("lbl_Sid4RArrivaldate");
            Label lbl_Sid4RArrivalplace4 = (Label)ea.Item.FindControl("lbl_Sid4RArrivalplace");
            // airportnames
            Label Label9 = (Label)ea.Item.FindControl("Label9");
            Label Label10 = (Label)ea.Item.FindControl("Label10");
            // fares AND PAXS
            Label lblTotalprice = (Label)ea.Item.FindControl("lblTotalprice");
            Label AdultFare = (Label)ea.Item.FindControl("lbladultfare");
            Label ChildFare = (Label)ea.Item.FindControl("lblchildfare");
            Label InfantFare = (Label)ea.Item.FindControl("lblinfantfare");


            //sessions seg1
            Session["slbl_Sid1DeptTime1"] = lbl_Sid1DeptTime1.Text;
            Session["slbl_Sid1Deptdate1"] = lbl_Sid1Deptdate1.Text;
            Session["slblSid1_DeparturefromPlace1e"] = lblSid1_DeparturefromPlace1.Text;
            Session["slbl_Sid1DAirlinename1"] = lbl_Sid1DAirlinename1.Text;
            Session["slbl_Sid1DAircode1"] = lbl_Sid1DAircode1.Text;
            Session["slbl_Sid1FlightNo1"] = lbl_Sid1FlightNo1.Text;
            Session["slbl_Sid1Arrivaltime1"] = lbl_Sid1Arrivaltime1.Text;
            Session["slbl_Sid1Arrivaldate1"] = lbl_Sid1Arrivaldate1.Text;
            Session["slbl_Sid1Arrivalplace1"] = lbl_Sid1Arrivalplace1.Text;
            //airportname
            Session["slbl_Sid1DepartureAirport"] = lbl_Sid1DepartureAirport.Text;
            Session["slbl_Sid1Arrivalairport"] = lbl_Sid1Arrivalairport.Text;
            //sessions seg2
            Session["slbl_Sid2Depttime2"] = lbl_Sid2Depttime2.Text;
            Session["slbl_lbl_Sid2Deptdate2"] = lbl_lbl_Sid2Deptdate2.Text;
            Session["slblSid2_DeparturefromPlace2"] = lblSid2_DeparturefromPlace2.Text;
            Session["slbl_Sid2DAirlinename2"] = lbl_Sid2DAirlinename2.Text;
            Session["slbl_Sid2DAircode2"] = lbl_Sid2DAircode2.Text;
            Session["slbl_Sid2DAirNo2"] = lbl_Sid2DAirNo2.Text;
            Session["slbl_Sid2Arrivaltime2"] = lbl_Sid2Arrivaltime2.Text;
            Session["slbl_Sid2Arrivaldate2"] = lbl_Sid2Arrivaldate2.Text;
            Session["slbl_Sid3RArrivalplace2"] = lbl_Sid3RArrivalplace2.Text;
            //airportname
            Session["slbl_Sid2DepartureAirport"] = Label3.Text;
            Session["slbl_Sid2Arrivalairport"] = Label5.Text;
            //sessions seg3
            Session["slbl_Sid3RDepttime3"] = lbl_Sid3RDepttime3.Text;
            Session["slbl_Sid3RDeptdate3"] = lbl_Sid3RDeptdate3.Text;
            Session["slblSid3_RDeparturefromPlace3"] = lblSid3_RDeparturefromPlace3.Text;
            Session["slbl_RSid3DAirlinename3"] = lbl_RSid3DAirlinename3.Text;
            Session["slbl_Sid3RDAircode3"] = lbl_Sid3RDAircode3.Text;
            Session["slbl_Sid3RDAirNo3"] = lbl_Sid3RDAirNo3.Text;
            Session["slbl_Sid3RArrivaltime3"] = lbl_Sid3RArrivaltime3.Text;
            Session["slbl_Sid3RArrivaldate3"] = lbl_Sid3RArrivaldate3.Text;
            Session["slblSid3RArrivalAirportname3"] = lblSid3RArrivalAirportname3.Text;
            //airportnames
            Session["slbl_Sid3DepartureAirport"] = Label6.Text;
            Session["slbl_Sid3Arrivalairport"] = Label7.Text;

            //Sessions seg4
            Session["slbl_Sid4RDepttime4"] = lbl_Sid4RDepttime4.Text;
            Session["slbl_Sid4RDeptdate4"] = lbl_Sid4RDeptdate4.Text;
            Session["slblSid4_RDeparturefromPlace4"] = lblSid4_RDeparturefromPlace4.Text;
            Session["slbl_RSid4DAirlinename4"] = lbl_RSid4DAirlinename4.Text;
            Session["slbl_Sid4RDAircode4"] = lbl_Sid4RDAircode4.Text;
            Session["slbl_Sid4RDAirNo4"] = lbl_Sid4RDAirNo4.Text;
            Session["slbl_Sid4RArrivaltime4"] = lbl_Sid4RArrivaltime4.Text;
            Session["slbl_Sid4RArrivaldate4"] = lbl_Sid4RArrivaldate4.Text;
            Session["slbl_Sid4RArrivalplace4"] = lbl_Sid4RArrivalplace4.Text;
            //airportnames
            Session["slbl_Sid4DepartureAirport"] = Label9.Text;
            Session["slbl_Sid4Arrivalairport"] = Label10.Text;
            Session["slblTotalprice"] = lblTotalprice.Text;

            Session["sAdultfare"] = AdultFare.Text;
            Session["schildfare"] = ChildFare.Text;
            Session["sinfantfare"] = InfantFare.Text;
            Response.Redirect("bookingflights.aspx");
        }
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Travelpathconn"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Id,DestinationName from tblAirportnames where " +
                "DestinationName like '%'+@HYD+'%'";
                cmd.Parameters.AddWithValue("@HYD", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> CountryNames = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        string item = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem(sdr["DestinationName"].ToString(), sdr["Id"].ToString());
                        CountryNames.Add(item);
                    }
                }
                conn.Close();
                return CountryNames;
            }
        }
    }
    protected void imgsearch_Click(object sender, ImageClickEventArgs e)
    {
        string hf_sd1_AP = Request.Form[hf_sd1_arrivalAirportId.UniqueID];
        Session["rbtn_o_r"] = rbtn_one_return.SelectedItem.Text;
        Session["ddl_f_f"] = fly_ddlst.SelectedItem.Text.ToString(); //  from destination
        Session["code_ddl_f_f"] = fly_ddlst.Text.ToString(); //  from code 443 destination
        Session["txt_f_t"] = txt_flight_to.Text.ToString(); // name to destination
        Session["code_ddl_f_t"] = hf_sd1_AP;// code to destnation
        Session["txt_f_d_d"] = txt_flight_depart.Text;  // depart date 
        Session["txt_f_r_d"] = txt_flight_return.Text; //  return date

        Session["d-c-t"] = Classtype_DropDownList.SelectedItem.Text; // class type 
        Session["d-a"] = Adult_DropDownList.SelectedItem.Text; // adult 
        Session["d-c"] = Child_DropDownList.SelectedItem.Text; // child 
        Session["d-i"] = Infant_DropDownList.SelectedItem.Text;// infant 
        Response.Redirect("flightsresults.aspx");
        //  BindGrid();
    }
}