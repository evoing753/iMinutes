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
        Button1.Attributes["OnClick"] = "return confirm('確定要修改該筆資料嗎?')";
        Button2.Attributes["OnClick"] = "return confirm('確定要刪除該筆資料嗎?')";

        lblMessage.Visible = false;
    }

    //修改
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            // FormView1.ChangeMode(FormViewMode.Edit);
            FormView1.UpdateItem(true);
        }
        catch (Exception ex)
        {
            Response.Write("錯誤訊息: " + ex.Message);
        }


        lblMessage.Visible = true;
        lblMessage.Text = "修改資料成功";
    }

    //刪除
    protected void Button2_Click(object sender, EventArgs e)
    {
        FormView1.DeleteItem();

        lblMessage.Visible = true;
        lblMessage.Text = "刪除資料成功";
    }

    //取消
    protected void Button3_Click(object sender, EventArgs e)
    {

    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}