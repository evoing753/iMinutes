using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Aku_NewConference : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    meet mt = new meet();
    places ps = new places();
    place_schedule phe = new place_schedule();
    users us = new users();
    @event et = new @event();

    SqlConnection con = new SqlConnection(@"Data Source=app9503.c9zef2m2zlax.ap-northeast-1.rds.amazonaws.com;Initial Catalog=iMinutes;Persist Security Info=True;User ID=app9503;Password=Passw0rd");
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblConvener.Visible = false;
        lblMsgChooseGood.Visible = false;
        //lblLoginUserMsg.Visible = false;

        users user = Session[CDictionary.SK_LOGIN_USER] as users;

        if (user == null)//憑證消失時導回登入畫面
        {
            Response.Redirect("Aku_Login_Demo.aspx");

        }

        //lblLoginUserMsg.Visible = true;
        //lblLoginUserMsg.Text = "Hi！" + user.user_name;

        lblConvener.Visible = true;
        lblConvener.Text = user.user_name;
        lblOrg.Text = user.organization;


        //流水號
        string sa = DateTime.Now.ToString("yyyy-MM-dd" + txtNumber.Text);
        string sa1 = sa.Substring(sa.Length - 5);
        string sa2 = DateTime.Now.ToString("yyyy-MM-dd");
        if (string.Compare(sa1, sa2, true) == -1)
        {
            mt.meet_code = txtNumber.Text = DateTime.Now.ToString("yyyy-MM-dd" + "001");

        }
        else
        {
            int i = Convert.ToInt32(sa1);
            int i1 = i + 1;

            string sa3 = i1.ToString();
            mt.meet_code = txtNumber.Text = DateTime.Now.ToString("yyyy-MM-dd") + int.Parse(sa3).ToString("---000");

        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {   //LINQ
        //textbox入值
        mt.meet_title = txtName.Text;
        mt.start_time = phe.start_time =  txtStartTime.Text;
        mt.end_time = phe.end_time =  txtEndTime.Text;
        mt.meet_note = txtNote.Text;
        ps.organization = lblOrg.Text;//公司

        //行事曆
        et.event_id = mt.meet_id;
        et.title = mt.meet_title = txtName.Text;
        et.event_start = mt.start_time = txtStartTime.Text;
        et.event_end = mt.end_time = txtEndTime.Text;
        et.description = mt.meet_note = txtNote.Text;

        //兩個表,要取得相同地點ID,關聯寫法 (meet_place,places_id)
        string PlacesName = txtPlaceName.Text;
        ps.place_name = PlacesName;
        string meetConvener = lblConvener.Text;

        if (meetConvener.Length > 0)//條件人名要大於0
        {
            mt.convener = meetConvener;//SQL欄位convener = meetConvener
            phe.place_id = ps.place_id;

            mt.meet_place = ps.place_id;
            //phe.place_id = mt.meet_place;

            //關聯性給資料
            mt.places = ps;
            phe.meet = mt;
            phe.places = ps;
        }


        db.@event.InsertOnSubmit(et);
        db.meet.InsertOnSubmit(mt);
        db.places.InsertOnSubmit(ps);
        db.place_schedule.InsertOnSubmit(phe);
        db.SubmitChanges();



        //SqlCommand cmd3 = new SqlCommand();
        //con.Open();
        //cmd3.CommandText = "select user_id from users where user_name ='" + lblConvener.Text + "'";
        //cmd3.CommandType = CommandType.Text;
        //cmd3.Connection = con;
        //int userID = Convert.ToInt32(cmd3.ExecuteScalar());

        //SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = "select meet_id from meet where meet_title ='" + txtName.Text + "'";
        //cmd.CommandType = CommandType.Text;
        //cmd.Connection = con;
        //int meetID = Convert.ToInt32(cmd.ExecuteScalar());

        //SqlCommand cmd2 = new SqlCommand("Insert into meet_members Values(@user_id,@meet_id)", con);
        //cmd2.Parameters.AddWithValue("@user_id", userID);
        //cmd2.Parameters.AddWithValue("@meet_id", meetID);
        ////int rows = cmd2.ExecuteNonQuery();
        //cmd2.ExecuteNonQuery();
        //con.Close();



        Response.Write("<Script language='Javascript'>");
        Response.Write("alert('成功')");
        Response.Write("</" + "Script>");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtPlaceName.Text = DropDownList1.SelectedValue;
    }


    protected void chkOrgUser_SelectedIndexChanged(object sender, EventArgs e)
    {
        listYesUser.Items.Clear();
        foreach (ListItem lstitm in chkOrgUser.Items)
        {
            if (lstitm.Selected)
            {
                listYesUser.Items.Add(lstitm.Text);
            }
        }

        if (chkOrgUser.SelectedIndex == -1)
        {
            lblMsgChooseGood.ForeColor = System.Drawing.Color.Red;

        }
        else
        {

            lblMsgChooseGood.ForeColor = System.Drawing.Color.Green;
        }

        lblMsgChooseGood.Visible = true;
        lblMsgChooseGood.Text = " \n 你選擇了" + "\n" + listYesUser.Items.Count.ToString() + "\n 個成員";


    }

    protected void linkbtnOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.AppendHeader("Refresh", "1;url=Aku_Home_Demo.aspx");//設定1秒後登出
        Response.Write("<Script language='Javascript'>");
        Response.Write("alert('已登出')");
        Response.Write("</" + "Script>");
        return;
    }


    //protected void btnSend1_Click(object sender, EventArgs e)
    //{//暫時拿掉

    //}


    protected void Button1_Click(object sender, EventArgs e)
    {
        mt = db.meet.FirstOrDefault(m => m.meet_title.Equals(txtName.Text) && m.start_time.Equals(txtStartTime.Text) &&
        m.end_time.Equals(txtEndTime.Text) && m.meet_note.Equals(txtNote.Text));

        if (mt != null)
        {
            Response.AppendHeader("Refresh", "1;url=Aku_Calendar_Demo.aspx");//設定1秒導入下一頁
            //Response.Write("<Script language='Javascript'>");
            //Response.Write("alert('成功')");
            //Response.Write("</" + "Script>");
            Session[CDictionary.SK_Calendar_SCH] = mt;

        }
    }
}