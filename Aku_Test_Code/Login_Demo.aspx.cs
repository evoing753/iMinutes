using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;//using io library
using System.Data;
using System.Data.SqlClient;


public partial class Login_Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Visible = false;  圖片上傳的label
        lblMsg.Visible = false;
    }

    protected void btn新增_Click(object sender, EventArgs e)
    {
        
        /////////////////////////////////////////目前註冊認證,bug = 檔案格式錯誤,卻可以註冊成功 

        //驗證控制向驗證,方法IsValid驗證成功的意思
        if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid &&
            CompareValidator1.IsValid && RegularExpressionValidator1.IsValid &&
            CustomValidator1.IsValid)
        {
            //LINQ入值
            users user = new users();

            user.user_mail = txtUser.Text;
            user.user_name = txtName.Text;
            user.user_pwd = txtpasswd.Text;
            user.user_phone = txtphone.Text;



            DataClassesDataContext dc = new DataClassesDataContext();
            dc.users.InsertOnSubmit(user);
            dc.SubmitChanges();

            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('註冊成功')");
            Response.Write("</" + "Script>");

        }


        //if (FileUpload1.HasFile == false) return;
        //string filename = FileUpload1.FileName;//宣告檔案名稱
        //string extension = Path.GetExtension(filename).ToLowerInvariant();//給予檔案名稱路徑

        ////限制附檔名兩種
        //List<string> allowedExtension = new List<string> { ".jpg", ".png" };
        //if (allowedExtension.IndexOf(extension) == -1)
        //{
        //    Response.Write("<Script language='Javascript'>");
        //    Response.Write("alert('檔案格式錯誤')");
        //    Response.Write("</" + "Script>");
        //    Label1.Visible = true;
        //    Label1.Text = "檔案格式錯誤";
        //    return;
        //}


        //// 限制檔案大小，限制為 2MB
        //int filesize = FileUpload1.PostedFile.ContentLength;
        //if (filesize > 2100000)
        //{
        //    Response.Write("<Script language='Javascript'>");
        //    Response.Write("alert('檔案大小上限為 2MB，該檔案無法上傳')");
        //    Response.Write("</" + "Script>");
        //    Label1.Visible = true;
        //    Label1.Text = "檔案大小上限為 2MB，該檔案無法上傳";
        //    return;
        //}



        //// 檢查 Server 上該資料夾是否存在，不存在就自動建立
        //string serverDir = @"D:\ASP.NET.SQL.Demo\picture";
        //if (Directory.Exists(serverDir) == false) Directory.CreateDirectory(serverDir);


        //// 判斷 Server 上檔案名稱是否有重覆情況，有的話必須進行更名
        //string serverFilePath = Path.Combine(serverDir, filename);
        //string fileNameOnly = Path.GetFileNameWithoutExtension(filename);
        //int fileCount = 1;
        //while (File.Exists(serverFilePath))
        //{
        //    // 重覆檔案的命名規則為 檔名_1、檔名_2 以此類推
        //    filename = string.Concat(fileNameOnly, "_", fileCount, extension);
        //    serverFilePath = Path.Combine(serverDir, filename);
        //    fileCount++;
        //}


        //if ((RequiredFieldValidator1.IsValid & RequiredFieldValidator2.IsValid & RequiredFieldValidator3.IsValid &
        //    CompareValidator1.IsValid & RegularExpressionValidator1.IsValid &
        //    CustomValidator1.IsValid) != FileUpload1.HasFile)
        //{

        //    Response.Write("<Script language='Javascript'>");
        //    Response.Write("alert('檔案上傳失敗')");
        //    Response.Write("</" + "Script>");

        //    Label1.Visible = true;
        //    Label1.Text = "檔案上傳失敗";
        //    return;
        //}




        //// 把檔案傳入指定的 Server 內路徑
        //try
        //{

        //    FileUpload1.SaveAs(serverFilePath);
        //    Response.Write("<Script language='Javascript'>");
        //    Response.Write("alert('檔案上傳成功')");
        //    Response.Write("</" + "Script>");

        //    Label1.Visible = true;
        //    Label1.Text = "檔案上傳成功";

        //    return;

        //}
        //catch (Exception ex)
        //{



        //    Label1.Text = ex.Message;

        //}




    }




    bool isNumber(string p) //設定 判斷是否是數字
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
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (isNumber(args.Value))//判斷數字
        {
            args.IsValid = false;//如果都是數字就是false
            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('密碼格式錯誤')");
            Response.Write("</" + "Script>");
            return;
        }
        else
        {
            args.IsValid = true;//如果含有至少一個非數字就是true
        }
    }



    protected void btn登入_Click(object sender, EventArgs e)
    {
        lblMsg.Visible = true;
        lblMsg.Text = "帳號或密碼有錯誤";

        users user = (new DataClassesDataContext()).users.FirstOrDefault
            (u => u.user_mail.Equals(txtloginUser.Text) && u.user_pwd.Equals(txtloginPasswd.Text));

        if (user != null)
        {
            Session[CDictionary.SK_LOGIN_USER] = user;
            Response.Redirect("Home_Demo.aspx");
        }


        //Response.Write("剛剛輸入的是" + txt_input.Text + "<hr/>");
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgetPasswd_Demo.aspx");
    }

}