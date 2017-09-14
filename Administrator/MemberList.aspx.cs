using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_MemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //顯示資料列
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "SELECT user_id,user_name Name,user_phone Phone,user_mail Account,user_pwd Password,organization Organization,isAdmin Admin FROM users";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

        //隱藏
        lblMessage.Visible = false;

    }

    //查詢
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = getSelectSql();
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

        DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;
        if (dv.Count == 0)
        {
            lblMessage.Visible = true;
            lblMessage.Text = "查無符合條件的資料";
            return;
        }
    }
    //多重條件
    private string getSelectSql()
    {
        string sql = "SELECT user_id,user_name Name,user_phone Phone,user_mail Account,user_pwd Password,organization Organization,isAdmin Admin FROM users WHERE 1=1";

       
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            sql += "AND user_name LIKE N'%" + txtName.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtEmail.Text))
        {
            sql += "AND user_mail LIKE '%" + txtEmail.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtOrganization.Text))
        {
            sql += "AND organization LIKE N'%" + txtOrganization.Text + "%'";
        }
        //CheckBox  
        /*if (this.isAdminCheckBox.Checked == true)
        {
            sql += "AND isAdmin" + isAdminCheckBox.Checked;
        }*/

        return sql;
    }

    //重整
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtOrganization.Text = "";

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "SELECT user_id,user_name Name,user_phone Phone,user_mail Account,user_pwd Password,organization Organization,isAdmin Admin FROM users";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
    }
    //分頁
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}