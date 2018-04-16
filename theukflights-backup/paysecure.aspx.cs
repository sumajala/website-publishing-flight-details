using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class paysecure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["bookid"] == null && Session["payAmount"] == null)
        {
            Response.Redirect("Default.aspx");  
        }
        else
        {
            Bookid.Text = Session["bookid"].ToString();
            payamount.Text = Session["payAmount"].ToString();
        }
    }

    protected void pay_Click(object sender, EventArgs e)
    {
        if (Bookid.Text != null && payamount.Text != null && txt_Address.Text!=null && txt_cardno.Text!=null && txt_expno.Text!=null && txt_name.Text!=null)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tbl_cd (BookReferenceID,payeeAddress,chname,ctype,cnumber,cem,cey,cc,paya) VALUES(@BookReferenceID,@payeeAddress,@chname,@ctype,@cnumber,@cem,@cey,@cc,@paya)"))
                {
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@BookReferenceID",Bookid.Text);
                    cmd.Parameters.AddWithValue("@payeeAddress",txt_Address.Text);
                    cmd.Parameters.AddWithValue("@chname", txt_name.Text);
                    cmd.Parameters.AddWithValue("@ctype",ddlCardtype.Text);
                    cmd.Parameters.AddWithValue("@cnumber",txt_cardno.Text);
                    cmd.Parameters.AddWithValue("@cem", ddl_em.Text);
                    cmd.Parameters.AddWithValue("@cey", ddl_ey.Text);
                    cmd.Parameters.AddWithValue("@cc", txt_expno.Text);
                    cmd.Parameters.AddWithValue("@paya",payamount.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }

        }
        Response.Redirect("thankyou.aspx");
    }
}