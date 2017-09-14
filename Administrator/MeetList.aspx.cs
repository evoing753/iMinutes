using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_MeetList : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //顯示資料列
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select meet_id, meet_title Title,place_name PlaceName,convener Convener,meet_note Note,start_time StartTime,end_time EndTime from meet m inner join places p on m.meet_place = p.place_id";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

        //隱藏
        lblMessage.Visible = false;

        //////////////////
        //Label3.Visible = false;

        /*users user = Session[CDictionary.SK_LOGIN_USER] as users;

        if (user != null && Session != null)
        {

            Label3.Visible = true;
            Label3.Text = "Hi！" + user.user_name;
        }*/
        /////////////

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
        string sql = "select meet_id, meet_title Title,place_name PlaceName,convener Convener,meet_note Note,start_time StartTime,end_time EndTime from meet m inner join places p on m.meet_place = p.place_id WHERE 1=1";


        if (!string.IsNullOrEmpty(txtMeetTitle.Text))
        {
            sql += "AND meet_title LIKE N'%" + txtMeetTitle.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtConvener.Text))
        {
            sql += "AND convener LIKE N'%" + txtConvener.Text + "%'";
        }

        //起訖時間
        if(!string.IsNullOrEmpty(txtStartTime.Text) &&
           !string.IsNullOrEmpty(txtEndTime.Text))
        {
            sql += "AND start_time between '" + txtStartTime.Text + "' and '" + txtEndTime.Text + 1 + "'";
        }
        
        return sql;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {

        txtMeetTitle.Text = "";
        txtStartTime.Text = "";
        txtEndTime.Text = "";
        txtConvener.Text = "";

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "select meet_id, meet_title Title,place_name PlaceName,convener Convener,meet_note Note,start_time StartTime,end_time EndTime from meet m inner join places p on m.meet_place = p.place_id";
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