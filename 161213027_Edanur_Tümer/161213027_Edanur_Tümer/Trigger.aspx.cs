using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _161213027_Edanur_Tümer
{
    public partial class Trigger : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM sales.customers_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM sales.orders_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM sales.staffs_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM sales.stores_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM sales.order_items_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM production.categories_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM production.products_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM production.stocks_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM production.brands_log";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }
}