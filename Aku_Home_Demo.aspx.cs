using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {//
        lblLoginUserMsg.Visible = false;

        users user = Session[CDictionary.SK_LOGIN_USER] as users;

        if (user != null && Session != null)
        {

            lblLoginUserMsg.Visible = true;
            lblLoginUserMsg.Text = "Hi！" + user.user_name;
        }
    }

    protected void linkbtnOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.AppendHeader("Refresh", "1;url=Aku_Home_Demo.aspx");//設定1秒後登出
        Response.Write("<Script language='Javascript'>");
        Response.Write("alert('已登出')");
        Response.Write("</" + "Script>");
        return;
    }
}