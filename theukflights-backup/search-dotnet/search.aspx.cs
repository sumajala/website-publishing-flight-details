using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services;
using System.Net.Mail;
public partial class search_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
   
    protected void submit_ImageButton_Click(object sender, ImageClickEventArgs e)
    {

   
    }
    protected void rbtn_one_return_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbtn_one_return.SelectedIndex == 0)
        {
            txt_return_date.Enabled = false;
            ImageButton1.Enabled = false;

        }
        else
        {
            txt_return_date.Enabled = true;
            ImageButton1.Enabled = true;
        }
    }
}