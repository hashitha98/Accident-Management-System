using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEB_Course_Work
{
    public partial class Adminpanel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into[Police](branchName, PUName,PPassword) values('" + branchtxt.Text + "','" + pusertxt.Text + "','" + ppasstxt.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ins = "Insert into[Rda](RBranchName, RUName,RPassword) values('" + rbranchtxt.Text + "','" + rusertxt.Text + "','" + rpasstxt.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string ins = "Insert into[Insurance](ICompanyName,IBranchName, IUName,IPassword) values('"+icntxt.Text+"','" + ibranchtxt.Text + "','" + iusertxt.Text + "','" + ipasstxt.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}