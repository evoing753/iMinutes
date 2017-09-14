using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.InsertCommand = getInsertSql();
        sds.Insert();

        lblMessage.Visible = true;
        lblMessage.Text = "資料新增成功";

        txtPlaceName.Text = "";
        txtLocation.Text = "";
        txtCapacity.Text = "";
        txtOrganization.Text = "";


    }

    private string getInsertSql()
    {
        string sql = "INSERT INTO places (";
        sql += " place_name,";
        sql += " place_location,";
        sql += " place_capacity,";
        sql += " organization";
        sql += " )VALUES( ";
        sql += " N'" + txtPlaceName.Text + "', ";
        sql += " N'" + txtLocation.Text + "', ";
        sql += " N'" + txtCapacity.Text + "', ";
        sql += " N'" + txtOrganization.Text + "') ";

        return sql;

    }

}