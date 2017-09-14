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

    //新增
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlDataSource sds = new SqlDataSource();
        sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
        sds.InsertCommand = getInsertSql();
        sds.Insert();

        lblMessage.Visible = true;
        lblMessage.Text = "資料新增成功";

        txtTitle.Text = "";
        txtStartTime.Text = "";
        txtEndTime.Text = "";
        txtConvener.Text = "";
        txtLocation.Text = "";
        txtNote.Text = "";
    }

    private string getInsertSql()
    {
        string sql = "INSERT INTO meet (";
        sql += " meet_title,";
        sql += " start_time,";
        sql += " end_time,";
        sql += " convener,";
        sql += " meet_place,";
        sql += " meet_note";
        sql += " )VALUES( ";
        sql += " N'" + txtTitle.Text + "', ";
        sql += " N'" + txtStartTime.Text + "', ";
        sql += " N'" + txtEndTime.Text + "', ";
        sql += " N'" + txtConvener.Text + "', ";
        sql += " N'" + txtLocation.Text + "', ";
        sql += " N'" + txtNote.Text + "') ";

        return sql;

    }

}