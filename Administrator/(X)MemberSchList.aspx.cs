using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_MemberSchList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //顯示資料列
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select u.user_id,u.user_name Name,m.start_time StartTime,m.end_time EndTime,p.place_name Location,m.meet_title Title from(((user_schedule us inner join meet m on us.meet_id = m.meet_id) inner join users u on us.user_id = u.user_id) inner join places p on m.meet_place = p.place_id)";
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

    private string getSelectSql()
    {
        string sql = "SELECT * FROM user_schedule WHERE 1=1";



        //時間
        if (!string.IsNullOrEmpty(txtStartTime.Text))
        {
            sql += "AND start_time LIKE '%" + txtStartTime.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtEndTime.Text))
        {
            sql += "AND end_time LIKE '%" + txtEndTime.Text + "%'";
        }

        return sql;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "SELECT * FROM user_schedule";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

        txtStartTime.Text = "";
        txtEndTime.Text = "";

    }

}