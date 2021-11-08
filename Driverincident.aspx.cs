using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


namespace WEB_Course_Work
{
    public partial class Driverincident : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }
        }

        public void Display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("usp_employee_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                grd.DataSource = ds;
                grd.DataBind();
            }
            else
            {
                grd.DataSource = null;
                grd.DataBind();
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string FN = "";
            string Ext = "";

            if (btn_save.Text == "Save")
            {
                FN = DateTime.Now.Ticks.ToString() + Path.GetFileName(file_upload.PostedFile.FileName);
                Ext = Path.GetExtension(file_upload.PostedFile.FileName);
                if (Ext == ".jpg" || Ext == ".jpeg" || Ext == ".png")
                {
                    lblmsg.Text = "";
                    file_upload.SaveAs(Server.MapPath("UploadedImages" + "\\" + FN));
                    con.Open();
                    SqlCommand cmd = new SqlCommand("sp_fileupload", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@name", txt_name.Text);
                    cmd.Parameters.AddWithValue("@images", FN);
                    cmd.Parameters.AddWithValue("@cnum", txt_cnum.Text);
                    cmd.Parameters.AddWithValue("@vtype", txt_vtype.Text);
                    cmd.Parameters.AddWithValue("@vnum", txt_vnum.Text);
                    cmd.Parameters.AddWithValue("@icom", txt_icom.Text);
                    cmd.Parameters.AddWithValue("@det", txt_det.Text);
                    cmd.Parameters.AddWithValue("@loc", txt_loc.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Display();
                }
                else
                {
                    lblmsg.Text = "please upload only .jpg or .jpeg or .png files !!!";
                }
            }
            else
            {
                FN = Path.GetFileName(file_upload.PostedFile.FileName);
                Ext = Path.GetExtension(file_upload.PostedFile.FileName);

                lblmsg.Text = "";

                con.Open();
                SqlCommand cmd = new SqlCommand("usp_employee_update", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empid", ViewState["EID"]);
                cmd.Parameters.AddWithValue("@name", txt_name.Text);
                cmd.Parameters.AddWithValue("@cnum", txt_cnum.Text);
                cmd.Parameters.AddWithValue("@vtype", txt_vtype.Text);
                cmd.Parameters.AddWithValue("@vnum", txt_vnum.Text);
                cmd.Parameters.AddWithValue("@icom", txt_icom.Text);
                cmd.Parameters.AddWithValue("@det", txt_det.Text);
                cmd.Parameters.AddWithValue("@loc", txt_loc.Text);

                if (FN != "")
                {
                    cmd.Parameters.AddWithValue("@images", FN);
                    file_upload.SaveAs(Server.MapPath("UploadedImages" + "\\" + FN));
                    File.Delete(Server.MapPath("UploadedImages" + "\\" + ViewState["IMG"]));
                }
                else
                {
                    cmd.Parameters.AddWithValue("@images", ViewState["IMG"]);
                }
                cmd.ExecuteNonQuery();
                con.Close();
                Display();
            }
        }

        protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EDT")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("usp_employee_edit", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empid", e.CommandArgument);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    txt_name.Text = ds.Tables[0].Rows[0]["name"].ToString();
                    ViewState["IMG"] = ds.Tables[0].Rows[0]["images"].ToString();
                    txt_cnum.Text = ds.Tables[0].Rows[0]["cnum"].ToString();
                    txt_vtype.Text = ds.Tables[0].Rows[0]["vtype"].ToString();
                    txt_vnum.Text = ds.Tables[0].Rows[0]["vnum"].ToString();
                    txt_icom.Text = ds.Tables[0].Rows[0]["icom"].ToString();
                    txt_det.Text = ds.Tables[0].Rows[0]["det"].ToString();
                    txt_loc.Text = ds.Tables[0].Rows[0]["loc"].ToString();
                    btn_save.Text = "Update";
                    ViewState["EID"] = e.CommandArgument;
                }
            }
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("deletebyid",con);
            cmd.CommandType = CommandType.StoredProcedure;
            btn_del.Text = "delete";
            cmd.ExecuteNonQuery();
            con.Close();
            Display();
            

        }
    }
}