using System;
using System.Collections.Generic;
using System.Data;
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
        lbl修改密碼.Visible=false;
        Label1.Visible = false;


        if (user == null)//憑證消失時導回登入畫面
        {
            Response.Redirect("Aku_Login_Demo.aspx");
        }

        lblLoginUserMsg.Text = "Hi！" + user.user_name;
        lblLoginUserMsg.Visible = true;
        lbl修改密碼.Visible = true;


        HttpCookie LOGIN_USER = new HttpCookie("LOGIN_USER");
        LOGIN_USER.Value = user.user_mail;
        LOGIN_USER.Domain = "app9503.ddns.net";
        Response.Cookies.Add(LOGIN_USER);

        HttpCookie meet_code = new HttpCookie("meet_code");
        meet_code.Value = "2017-08-21---21003";
        meet_code.Domain = "app9503.ddns.net";
        Response.Cookies.Add(meet_code);

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = @"select N'會議時間:'+m.start_time +N'/會議名稱:'+ m.meet_title as 會議資訊,user_id,mm.meet_note from meet as m inner join meet_members as mm on m.meet_id = mm.meet_id where user_id = @userid ";
        sds.SelectParameters.Add("userid", user.user_id.ToString());
        DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;
        if (dv.Count == 0)
        {
            Label1.Visible = true;
            Label1.Text = "查無符合條件的資料";
            return;
        }
        DropDownList1.DataSource = dv.Table.ToString();
        DropDownList1.DataBind();


    }

    public string getLoginUser()
    {

        users user = Session[CDictionary.SK_LOGIN_USER] as users;
        return user.user_name;

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
