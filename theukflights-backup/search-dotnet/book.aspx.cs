using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Web.Services;

public partial class search_book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
      //txt_depdate_CalendarExtender.StartDate = DateTime.Now.Date.AddDays(0);
      //txt_arrdate_CalendarExtender.StartDate = DateTime.Now.Date.AddDays(0);
    
      //txt_depdate_CalendarExtender.EndDate = DateTime.Now.Date.AddMonths(12);
      //txt_arrdate_CalendarExtender.EndDate = DateTime.Now.Date.AddMonths(12);
     // txt_depdate_CalendarExtender.SelectedDate = DateTime.Now.Date;

    //  txt_depdate_CalendarExtender.SelectedDate = txt_arrdate_CalendarExtender.StartDate;
    }

    
    
    [WebMethod]

    public static List<string> GetAutoCompleteData(string username)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection(@"Data Source=; Initial Catalog=; User ID=; Password='';"))
        {
            using (SqlCommand cmd = new SqlCommand("select DISTINCT AirportNames from AirportName where AirportNames LIKE '%'+@SearchText+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", username);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(dr["AirportNames"].ToString());
                }
                return result;
            }
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            txt_arrdate.Enabled = false;

        }
        else
        {
            txt_arrdate.Enabled = true;
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
         
        // To send email
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.live.com");
            mail.From = new MailAddress("theukflights@outlook.com");
            mail.To.Add("shahed@theukflights.com");
            mail.Bcc.Add("theukflights@outlook.com");
          
            // mail.To.Add("shrikannth@theukflights.com");
            mail.Subject = "New Booking Request @ Theukflights.co.uk";
            mail.Body = "<div class=WordSection1><p class=MsoNormal>Hello,<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><table class=MsoTable15Grid4Accent6 border=1 cellspacing=0 cellpadding=0 style='border-collapse:collapse;border:none'><tr><td width=623 colspan=6 valign=top style='width:467.5pt;border:solid #70AD47 1.0pt;background:#70AD47;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><span style='color:white'> Passenger Travel Information:&nbsp; Theukflights.co.uk <o:p></o:p></span></b></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>First Name:<o:p></o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_firstname.Text.Trim() + "<o:p></o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Last Name:<o:p></o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_lastname.Text.Trim() + "<o:p></o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Phone No:<o:p></o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_phone.Text.Trim() + "<o:p></o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Email Id:<o:p></o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_email.Text.Trim() + "<o:p></o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Journey Type:<o:p></o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>"+RadioButtonList1.SelectedItem.Text+"<o:p></o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Pref Airlines:<o:p></o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_preairline.Text.Trim() + "<o:p></o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Flying From<o:p></o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" +fly_ddlst.SelectedItem.Text+ "<o:p></o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Flying To:<o:p></o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_flyingto.Text.Trim() + "<o:p></o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Dept- Date:<o:p></o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_depdate.Text.Trim() + "<o:p></o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>Arr- Date:<o:p></o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal>" + txt_arrdate.Text.Trim() + "<o:p></o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr><tr><td width=18 valign=top style='width:13.8pt;border:solid #A8D08D 1.0pt;border-top:none;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><b><o:p>&nbsp;</o:p></b></p></td><td width=104 valign=top style='width:77.95pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=189 valign=top style='width:5.0cm;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=95 valign=top style='width:70.9pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=198 valign=top style='width:148.8pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td><td width=19 valign=top style='width:14.3pt;border-top:none;border-left:none;border-bottom:solid #A8D08D 1.0pt;border-right:solid #A8D08D 1.0pt;background:#E2EFD9;padding:0cm 5.4pt 0cm 5.4pt'><p class=MsoNormal><o:p>&nbsp;</o:p></p></td></tr></table><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p><p class=MsoNormal>Regards,<o:p></o:p></p><p class=MsoNormal>Theukflights Team<o:p></o:p></p><p class=MsoNormal><o:p>&nbsp;</o:p></p></div>";
            mail.IsBodyHtml = true;
            SmtpServer.Port = 25;
            SmtpServer.Credentials = new System.Net.NetworkCredential("theukflights@outlook.com","Sree#323123");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Thank You! Your submission has been received');", true);
            //  To store in Database  
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TheUKflightsCon"].ConnectionString);
            //con.Open();
            //SqlCommand cmd = new SqlCommand();
            //cmd = new SqlCommand("insert into booking(FirstName,LastName,phone,email) values (@FirstName,@LastName,@phone,@email)", con);
            //cmd.Parameters.AddWithValue("FirstName", txt_firstname.Text.Trim());
            //cmd.Parameters.AddWithValue("LastName", txt_lastname.Text.Trim());
            //cmd.Parameters.AddWithValue("phone", txt_phone.Text.Trim());
            //cmd.Parameters.AddWithValue("email", txt_email.Text.Trim());
            //cmd.ExecuteNonQuery();
            //con.Close();
           
           // ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Thank You! Your submission has been received');", true);
            txt_firstname.Text = "";
            txt_lastname.Text = "";
            txt_phone.Text = "";
            txt_email.Text = "";
            txt_arrdate.Text = "";
            txt_depdate.Text = "";
          
            txt_flyingto.Text = "";
            txt_preairline.Text = "";  
        
    }
}