using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_PlacesList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "SELECT place_id,organization Organization,place_name PlaceName,place_location Location,place_capacity Capacity FROM places";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();

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
        string sql = "SELECT place_id,organization Organization,place_name PlaceName,place_location Location,place_capacity Capacity FROM places WHERE 1=1";


        if (!string.IsNullOrEmpty(txtPlaceName.Text))
        {
            sql += "AND place_name LIKE N'%" + txtPlaceName.Text + "%'";
        }
        if (!string.IsNullOrEmpty(txtCapacity.Text) &&
            !string.IsNullOrEmpty(txtCapacity0.Text))
        {
            sql += "AND place_capacity between '" + txtCapacity.Text + "' and '" + txtCapacity0.Text +"'";
        }
        if (!string.IsNullOrEmpty(txtOrganization.Text))
        {
            sql += "AND organization LIKE N'%" + txtOrganization.Text + "%'";
        }

        return sql;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtPlaceName.Text = "";
        txtCapacity.Text = "";
        txtCapacity0.Text = "";
        txtOrganization.Text = "";

        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.SelectCommand = "SELECT place_id,organization Organization,place_name PlaceName,place_location Location,place_capacity Capacity FROM places";
        GridView1.DataSource = sds.Select(DataSourceSelectArguments.Empty);
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}