using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class load : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Page.IsPostBack)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                if (Session["ddl_f_f"] == null && Session["ddl_f_f"] == null && Session["code_ddl_f_f"] == null && Session["code_ddl_f_t"] == null && Session["d-a"] == null && Session["d-c"] == null && Session["d-i"] == null && Session["guid"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                if (Session["guid"] != null)
                {
                   lbl_guid.Text= Session["guid"].ToString();
                }

               Response.AddHeader("REFRESH", "5;URL=flightsresults.aspx?id=" + lbl_guid.Text + "");
               // Response.AddHeader("REFRESH", "25;URL=flightdetails.aspx?id=" + lbl_guid.Text + "");

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

                }

                if (Session["d-c"] != null)
                {
                    lbl_child.Text = Session["d-c"].ToString();

                }

                if (Session["d-i"] != null)
                {
                    lbl_infant.Text = Session["d-i"].ToString();

                }

                //Session["rbtn_o_r"] = rbtn_one_return.SelectedItem.Text;
                //Session["ddl_f_f"] = ddl_flight_from.Text;
                //Session["txt_f_t"] = txt_flight_to.Text;
                //Session["txt_f_d_d"] = txt_flight_depart.Text;
                //Session["txt_f_r_d"] = txt_flight_return.Text;
                //Session["d-c-t"] = ddl_class.SelectedItem.Text;
                //Session["d-a"] = ddl_adult.SelectedItem.Text;
                //Session["d-c"] = ddl_child.SelectedItem.Text;
                //Session["d-i"] = ddl_infant.SelectedItem.Text;
            }

        }
    }
