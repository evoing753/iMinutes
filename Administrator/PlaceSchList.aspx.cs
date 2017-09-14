using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Administrator_PlaceSchList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //顯示
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select m.meet_id,p.place_id,p.organization Organization,p.place_name PlaceName,p.place_location Location,m.meet_title Title,m.start_time StartTime,m.end_time EndTime from (meet m inner join places p on p.place_id = m.meet_place)";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

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
        string sql = "select m.meet_id,p.place_id,p.organization Organization,p.place_name PlaceName,p.place_location Location,m.meet_title Title,m.start_time StartTime,m.end_time EndTime from (meet m inner join places p on p.place_id = m.meet_place) WHERE 1=1";


        if (!string.IsNullOrEmpty(txtOrganization.Text))
        {
            sql += "AND organization LIKE N'%" + txtOrganization.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtPlaceName.Text))
        {
            sql += "AND place_name LIKE N'%" + txtPlaceName.Text + "%'";
        }

        //起訖時間
        if (!string.IsNullOrEmpty(txtStartTime.Text) &&
           !string.IsNullOrEmpty(txtEndTime.Text))
        {
            sql += "AND m.start_time between '" + txtStartTime.Text + "' and '" + txtEndTime.Text + 1 + "'";
        }

        return sql;
    }

    //重整
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtOrganization.Text = "";
        txtPlaceName.Text = "";
        txtStartTime.Text = "";
        txtEndTime.Text = "";

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select m.meet_id,p.place_id,p.organization Organization,p.place_name PlaceName,p.place_location Location,m.meet_title Title,m.start_time StartTime,m.end_time EndTime from (meet m inner join places p on p.place_id = m.meet_place)";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
    }





    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}