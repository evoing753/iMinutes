using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//忘記密碼 library
using System.Net;//忘記密碼 library
using System.Net.Mail;//忘記密碼 library

public partial class ForgetPasswd_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = "";


        
        SqlConnection con = new SqlConnection(@"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password = Passw0rd");
        SqlCommand cmd = new SqlCommand("select user_name , user_pwd from users where user_mail=@user_mail", con);
        cmd.Parameters.AddWithValue("user_mail", txtMail.Text);
        con.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        
        {

            if (sdr.Read())
            {
                username = sdr["user_name"].ToString();
                password = sdr["user_pwd"].ToString();

            }

        }
        con.Close();






        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("kurobot9503@gmail.com");
            msg.To.Add(txtMail.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is：" + username + "<br/><br/>" + "Your Password is：" + password);
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "kurobot9503@gmail.com"; //Your Email ID (轉發機器人)
            ntwd.Password = "pop15626"; // Your Password
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            lblMsg.Text = "Username and Password Sent Successfully";
            lblMsg.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login_Demo.aspx");
    }
}