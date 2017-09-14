using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator_MemberAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
    }

    //新增
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (RequiredFieldValidatorName.IsValid &&
            RequiredFieldValidatorEmail.IsValid &&
            RegularExpressionValidatorEmail.IsValid &&
            RequiredFieldValidatorPwd.IsValid &&
            CompareValidatorPwd.IsValid &&
            CustomValidatorPwd.IsValid)
        {
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = @"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd";
            sds.InsertCommand = getInsertSql();
            sds.Insert();

            lblMessage.Visible = true;
            lblMessage.Text = "資料新增成功";
        }

        txtName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtPwd.Text = "";
        txtOrganization.Text = "";
        isAdminCheckBox.Checked = false;
    }

    private string getInsertSql()
    {
        string sql = "INSERT INTO users (";
        sql += " user_name,";
        sql += " user_phone,";
        sql += " user_mail,";
        sql += " user_pwd,";
        sql += " organization,";
        sql += " isAdmin";
        sql += " )VALUES( ";
        sql += " N'" + txtName.Text + "', ";
        sql += " '" + txtPhone.Text + "', ";
        sql += " '" + txtEmail.Text + "', ";
        sql += " '" + txtPwd.Text + "', ";
        sql += " N'" + txtOrganization.Text + "', ";
        sql += " '" + isAdminCheckBox.Checked + "') ";
        return sql;

    }

    //密碼必須含有一個非數字字元
    bool isNumberic(string p)
    {
        try
        {
            double d = Convert.ToDouble(p);
            return true;
        }
        catch
        {
            return false;
        }
    }
    protected void CustomValidatorPwd_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = !isNumberic(args.Value);
    }
}