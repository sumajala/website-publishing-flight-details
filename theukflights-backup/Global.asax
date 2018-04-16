<%@ Application Language="C#" %>

<script runat="server">

    protected void Application_BeginRequest(object sender, EventArgs e)
    {
        //System.Web.HttpContext context = System.Web.HttpContext.Current;
        //string host = context.Request.Url.Host.ToLower();
        //if (false == host.StartsWith("www."))
        //{
        //    context.Response.StatusCode = 301;
        //    context.Response.AddHeader("Location", context.Request.Url.Scheme + "://www." + context.Request.Url.Authority);
        //}
    }
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    {
        Exception ex = new Exception();
        ex = Server.GetLastError().GetBaseException();
        //Exception exx = new Exception();


        System.IO.FileStream fs = new System.IO.FileStream(Server.MapPath("~/errorLOG.txt"), System.IO.FileMode.OpenOrCreate, System.IO.FileAccess.ReadWrite);
        System.IO.StreamWriter s = new System.IO.StreamWriter(fs);
        s.BaseStream.Seek(0, System.IO.SeekOrigin.End);
        s.WriteLine("ERROR DATE: " + System.DateTime.Now.ToString(System.Globalization.CultureInfo.InvariantCulture) + " \nERROR MESSAGE: " + ex.Message + "\nSOURCE: " + ex.Source + "\nFORM NAME: " + System.Web.HttpContext.Current.Request.Url.ToString() + "\nQUERYSTRING: " + Request.QueryString.ToString() + "\nTARGETSITE: " + ex.TargetSite.ToString() + "\nSTACKTRACE: " + ex.StackTrace + System.Diagnostics.EventLogEntryType.Error);
        s.WriteLine("-------------------------------------------------------------------------------------------------------------");
        s.Close();
        
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
