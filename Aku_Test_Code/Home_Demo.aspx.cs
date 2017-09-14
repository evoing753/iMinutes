using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginUserMsg.Visible = false;

        users user = Session[CDictionary.SK_LOGIN_USER] as users;

        if (user == null)//憑證消失要導回登入畫面
        {
            Response.Redirect("Login_Demo.aspx");
            
        }

        lblLoginUserMsg.Visible = true;
        lblLoginUserMsg.Text = "User：" + user.user_name + "<br/>" + user.user_mail;
    }
}