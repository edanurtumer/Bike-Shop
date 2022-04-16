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
    public partial class Ürün : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var constr = @"Data Source=EDANURTUMER\SQLEXPRESS;Initial Catalog=BikeStores;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "YeniUrunEkle";
            cmd.Parameters.Add("product_name", SqlDbType.VarChar, 250).Value = TextBox1.Text;
            cmd.Parameters.Add("brand_id", SqlDbType.Int, 250).Value = TextBox10.Text;
            cmd.Parameters.Add("category_id", SqlDbType.Int, 250).Value = TextBox11.Text;
            cmd.Parameters.Add("model_year", SqlDbType.SmallInt, 250).Value = TextBox12.Text;
            cmd.Parameters.Add("list_price", SqlDbType.Decimal, 250).Value = TextBox13.Text;
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
            cmd.CommandText = "UrunSilme";
            cmd.Parameters.Add("product_id", SqlDbType.Int, 250).Value = TextBox9.Text;
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
            cmd.CommandText = "UrunGuncelleme";
            cmd.Parameters.Add("product_id", SqlDbType.Int, 250).Value = TextBox3.Text;
            cmd.Parameters.Add("product_name", SqlDbType.VarChar, 250).Value = TextBox4.Text;
            cmd.Parameters.Add("brand_id", SqlDbType.Int, 250).Value = TextBox5.Text;
            cmd.Parameters.Add("category_id", SqlDbType.Int, 250).Value = TextBox6.Text;
            cmd.Parameters.Add("model_year", SqlDbType.SmallInt, 250).Value = TextBox7.Text;
            cmd.Parameters.Add("list_price", SqlDbType.Decimal, 250).Value = TextBox8.Text;
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
            cmd.CommandText = "UrunArama";
            cmd.Parameters.Add("product_name", SqlDbType.VarChar, 250).Value = TextBox2.Text;
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }
}