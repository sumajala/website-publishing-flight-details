﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;


public partial class _Default : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_flight_depart_CalendarExtender.StartDate = DateTime.Now.AddDays(1);
        txt_flight_return_CalendarExtender.StartDate = DateTime.Now.AddDays(5);

        //CalendarExtender1.StartDate = DateTime.Now.Date;
        //CalendarExtender2.StartDate = DateTime.Now.Date;
        txt_flight_depart_CalendarExtender.EndDate = DateTime.Now.Date.AddMonths(12);
        txt_flight_return_CalendarExtender.EndDate = DateTime.Now.Date.AddMonths(12);
       
        //CalendarExtender1.EndDate = DateTime.Now.Date.AddMonths(12);
        //CalendarExtender2.EndDate = DateTime.Now.Date.AddMonths(12);
       
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
    protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=SREEKANTHTHEUKF;Initial Catalog=ukflight;Persist Security Info=True;User ID=sa;Password=theUKflights"); 
    
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into week_deal values('" + txt_weekdeal.Text + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        txt_weekdeal.Text = "";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Thank You! Your Email is Subscribed for NewsLetters');", true);
       // Response.Write("<script>alert('Your Email is Subscribed for NewsLetters')</script>");
    }
    protected void submit_ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Guid obj = Guid.NewGuid();
        lbl_guid.Text = obj.ToString();
        Session["guid"] = lbl_guid.Text;
        string hf_sd1_AP = Request.Form[hf_sd1_arrivalAirportId.UniqueID];

        if (!IsPostBack)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {

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
            Response.Redirect("redirectingpage.aspx?id=" + lbl_guid.Text + "");


        }
    }
}