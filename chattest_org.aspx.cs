using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chattest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        users user = Session[CDictionary.SK_LOGIN_USER] as users;

        lblLoginUserMsg.Visible = false;
        //lbl修改密碼.Visible = false;
        //lbl登出.Visible = false;

        if (user == null)//憑證消失時導回登入畫面
        {
            Response.Redirect("Aku_Login_Demo.aspx");
        }

        lblLoginUserMsg.Text = "Hi！" + user.user_name;
        lblLoginUserMsg.Visible = true;
        //lbl修改密碼.Visible = true;
        //lbl登出.Visible = true;

    }
    public string getLoginUser()
    {
        users user = Session[CDictionary.SK_LOGIN_USER] as users;
        return user.user_mail;

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