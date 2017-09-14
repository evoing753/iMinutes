using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Aku_Update_ResetPasswd : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        string user_mail = Session["user_mail"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string user_mail = Session["user_mail"].ToString();

        SqlConnection con = new SqlConnection(@"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password = Passw0rd");
        SqlCommand cmd = new SqlCommand("Update users set user_pwd = '" + txtNewPwd.Text + "'where user_mail= '" + user_mail + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert ('Your password has been successfully updated')</script>");
        txtNewPwd.Text = "";
        txtConfirmPwd.Text = "";

    }

    protected void LinkBtnBack_Click(object sender, EventArgs e)
    {//
        Response.Redirect("Aku_Login_Demo.aspx");
    }
}