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
using System.Web.UI.DataVisualization.Charting;

namespace WEB_Course_Work
{
    public partial class Policehome : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
                LoadData();
                LoadData1();

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

        void LoadData()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString)) ;
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select vtype, Count(vtype) as TotAmount from Employee group by vtype", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x= new string[dt.Rows.Count];
            int[] y= new int[dt.Rows.Count];

            for (int i =0; i < dt.Rows.Count;i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32 (dt.Rows[i][1]);
            }

            Chart1.Series[0].Points.DataBindXY(x,y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
            Chart1.Legends[0].Enabled = true;


        }

        void LoadData1()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString)) ;
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select loc, Count(loc) as TotAmount from Employee group by loc", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }

            Chart2.Series[0].Points.DataBindXY(x, y);
            Chart2.Series[0].ChartType = SeriesChartType.Pie;
            Chart2.Legends[0].Enabled = true;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "Insert into[Locations](Name, Latitude, Longitude, Description) values('" + nametxt.Text + "','" + lattxt.Text + "','" + lontxt.Text + "','" + dettxt.Text + "')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {

        }
    }
}