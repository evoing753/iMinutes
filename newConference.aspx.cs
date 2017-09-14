using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class newConference : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["iMinutesTest"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        //conn.Open();
        //string query = "insert into meet values(1,'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        //string query2 = "insert into meet_members values(@meet_id,"
        //        + "@user_id,@is_record,@is_member')";
        //SqlCommand cmd = new SqlCommand(query, conn);
        //SqlCommand cmd2 = new SqlCommand(query2, conn);
        //int i = cmd.ExecuteNonQuery();           

        //conn.Close();

        //if (i >= 1)
        //{
        //    TextBox1.Text = "";
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    Response.Write("<script>alert('新增成功');</script>");
        //}

    }
    
}