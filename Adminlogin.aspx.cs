﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEB_Course_Work
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*) from [Admin] where name = '" + usertxt.Text + "' and password = '" + passtxt.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();

            if (temp == 1)
            {
                Response.Redirect("Adminpanel.aspx");
            }
            else
            {
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Text = "your Name Or Password Is Invalid";
            }
        }
    }
}