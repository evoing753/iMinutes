using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

       users user = Session[CDictionary.SK_LOGIN_USER] as users;

       lblLoginUserMsg.Visible = false;
       Label1.Visible = false;


       if (user == null)//憑證消失時導回登入畫面
       {
           Response.Redirect("Aku_Login_Demo.aspx");
       }

       lblLoginUserMsg.Text = "Hi！" + user.user_name;
       lblLoginUserMsg.Visible = true;

       HttpCookie LOGIN_USER = new HttpCookie("LOGIN_USER");
       LOGIN_USER.Value = user.user_name;
       LOGIN_USER.Domain = "localhost";
       Response.Cookies.Add(LOGIN_USER);

       HttpCookie meet_code = new HttpCookie("meet_code");
       meet_code.Value = "2017-08-21---21003";
       meet_code.Domain = "localhost";
       Response.Cookies.Add(meet_code);

        //if (Request.Cookies["meet_code"] != null)
        //{
        //    string userSettings;
        //    if (Request.Cookies["meet_code"]["meet_code"] != null)
        //    { userSettings = Request.Cookies["meet_code"]["meet_code"];
        //        Console.WriteLine(userSettings);
        //    }
        //}


    }

    public string getLoginUser()
    {

        users user = Session[CDictionary.SK_LOGIN_USER] as users;
        return user.user_mail;

    }


    protected void send_record_Click(object sender, EventArgs e)
    {
        users user = Session[CDictionary.SK_LOGIN_USER] as users;
        
        Label1.Visible = false;
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.UpdateCommand = @"UPDATE [dbo].[meet_members] SET [meet_note] = @note WHERE  user_id = 4 and meet_id = 64";
        sds.UpdateParameters.Add("note", Request.Form["editorValue"]);
        sds.Update();
        string text = "";
        text = Request.Form["editorValue"];
        
        Label1.Visible = true;
        Label1.Text = "新增資料成功";
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
