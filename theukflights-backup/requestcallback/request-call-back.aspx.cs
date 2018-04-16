using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class requestcallback_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       // SqlConnection con = new SqlConnection("Data Source=SREEKANTHTHEUKF;Initial Catalog=TheUKflights;Persist Security Info=True;User ID=sa;Password=theUKflights"); 
       

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into RequestMail values('" + Title_ddlist.SelectedItem.Text + "','" + TextBox_FirstName.Text + "','" + TextBox_LastName.Text + "','" + TextBox_phoneno.Text + "','" + TextBox_emailid.Text + "','" + Label1.Text + "','" + TextBox5.Text + "','" + Label2.Text + "')", con);

        cmd.ExecuteNonQuery();
        con.Close();
        Label3.Text = "Thank You ! Your Request has been Sent Successfully";
        TextBox_FirstName.Text ="";
        TextBox_LastName.Text ="";
        TextBox_phoneno.Text ="";
        TextBox_emailid.Text ="";
        TextBox5.Text ="";
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox2.Checked==true)
        {
            Label1.Text ="Request call and mail";
        }
      
        if (CheckBox3.Checked == false)
        {
            Label2.Text = "offer mails Not Requested";
        }
    }
    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox3.Checked==true)
        {
            Label2.Text ="Request offer mails";

        }

        if (CheckBox2.Checked==false)
        {
            Label1.Text = "Not Requested";
        }
    }
}