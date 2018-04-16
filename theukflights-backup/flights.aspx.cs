using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flights : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
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
    protected void submit_ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Guid obj = Guid.NewGuid();
        lbl_guid.Text = obj.ToString();
        Session["guid"] = lbl_guid.Text;
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
            Response.Redirect("http://www.theukflights.com/redirectingpage.aspx?id=" + lbl_guid.Text + "");

        
    }
}