using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//忘記密碼 library
using System.Net;//忘記密碼 library
using System.Net.Mail;//忘記密碼 library
using System.Data;//忘記密碼 library
public partial class ForgetPasswd_Demo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password = Passw0rd");
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {

            Session["user_mail"] = txtMail.Text;

            SqlDataAdapter adp = new SqlDataAdapter("select * from users where user_mail=@user_mail", con);
            con.Open();

            adp.SelectCommand.Parameters.AddWithValue("@user_mail", txtMail.Text);
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("Update users set user_pwd_change_status=1 where user_mail='" + txtMail.Text + "'", con);
                cmd.ExecuteNonQuery();

                SendEmail();

                lblMsg.Text = "successfully sent reset link on  your mail ,please check once! Thank you.";
                con.Close();
                cmd.Dispose();

                txtMail.Text = "";
            }
            else
            {
                lblMsg.Text = "Please enter vaild email ,please check once! Thank you.";
            }

        }

        catch (Exception ex)
        {

        }
    }

    private void SendEmail()
    {

        try
        {

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("kurobot9503@gmail.com");
            msg.To.Add(txtMail.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Hi！<br/>" + "Your Username is：" + txtMail.Text + "<br/> Click on below given link to Reset Your Password <br/><a href='http://localhost:6222/Aku_Update_ResetPasswd.aspx'>Click here to change your password</a><br/>Thanks...");
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

        catch (Exception ex)
        {

        }
    }

    private string GetUserEmail(string Email)
    {//取得使用者mail
        SqlCommand cmd = new SqlCommand("select user_mail from users where user_mail=@user_mail", con);
        cmd.Parameters.AddWithValue("@user_mail", txtMail.Text);
        string username = cmd.ExecuteScalar().ToString();
        return username;
    }

    protected void LinkBtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aku_Login_Demo.aspx");
    }
}