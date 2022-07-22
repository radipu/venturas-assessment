using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace VenturasApp
{
    public partial class Output : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        SqlConnection con;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                adapter = new SqlDataAdapter("SELECT Categories.Name AS Category, Items.itemName, Items.itemExpDate FROM Categories INNER JOIN Items ON Categories.Name = Items.itemCategory", con);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                gvDT.DataSource = dt;
                gvDT.DataBind();
            }
        }
    }
}