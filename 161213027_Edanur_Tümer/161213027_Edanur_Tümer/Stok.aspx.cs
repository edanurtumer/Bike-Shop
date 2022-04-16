using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _161213027_Edanur_Tümer
{
    public partial class Stok : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "YeniStokEkle";
            cmd.Parameters.Add("product_id", SqlDbType.Int, 250).Value = TextBox1.Text;
            cmd.Parameters.Add("store_id", SqlDbType.Int, 250).Value = TextBox2.Text;
            cmd.Parameters.Add("quantity", SqlDbType.Int, 250).Value = TextBox3.Text;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "StokSilme";
            cmd.Parameters.Add("store_id", SqlDbType.Int, 250).Value = TextBox4.Text;
            cmd.Parameters.Add("product_id", SqlDbType.Int, 250).Value = TextBox5.Text;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "StokGuncelleme";
            cmd.Parameters.Add("product_id", SqlDbType.Int, 250).Value = TextBox6.Text;
            cmd.Parameters.Add("store_id", SqlDbType.Int, 250).Value = TextBox7.Text;
            cmd.Parameters.Add("quantity", SqlDbType.Int, 250).Value = TextBox8.Text;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "StokArama";
            cmd.Parameters.Add("product_id", SqlDbType.VarChar, 250).Value = TextBox9.Text;
            cmd.Parameters.Add("store_id", SqlDbType.VarChar, 250).Value = TextBox10.Text;
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }
}