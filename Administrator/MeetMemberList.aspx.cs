using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_MeetMemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //顯示資料列
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select m.meet_id,  m.meet_title Title,m.start_time StartTime,m.end_time EndTime,u.user_name Name,ms.meet_note Note from((meet_members ms inner join meet m on ms.meet_id = m.meet_id) inner join users u on ms.user_id = u.user_id)";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

        //隱藏
        lblMessage.Visible = false;
    }

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

        string sql = "select m.meet_id,m.meet_title Title,m.start_time StartTime,m.end_time EndTime,u.user_name Name,ms.meet_note Note from((meet_members ms inner join meet m on ms.meet_id = m.meet_id) inner join users u on ms.user_id = u.user_id) WHERE 1=1";


        if (!string.IsNullOrEmpty(txtMeetTitle.Text))
        {
            sql += "AND meet_title LIKE N'%" + txtMeetTitle.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtName.Text))
        {
            sql += "AND user_name LIKE N'%" + txtName.Text + "%'";
        }

        //起訖時間
        if (!string.IsNullOrEmpty(txtStartTime.Text) &&
           !string.IsNullOrEmpty(txtEndTime.Text))
        {
            sql += "AND start_time between '" + txtStartTime.Text + "' and '" + txtEndTime.Text + 1 + "'";
        }

        return sql;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {

        txtMeetTitle.Text = "";
        txtName.Text = "";
        txtStartTime.Text = "";
        txtEndTime.Text = "";

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select m.meet_id,  m.meet_title Title,m.start_time StartTime,m.end_time EndTime,u.user_name Name,ms.meet_note Note from((meet_members ms inner join meet m on ms.meet_id = m.meet_id) inner join users u on ms.user_id = u.user_id)";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}