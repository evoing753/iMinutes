using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.AppendHeader("Refresh", "0;url=Aku_Home_Demo.aspx");//設定0秒後登出
        Response.Write("<Script language='Javascript'>");
        Response.Write("alert('已登出')");
        Response.Write("</" + "Script>");
        return;
    }
}