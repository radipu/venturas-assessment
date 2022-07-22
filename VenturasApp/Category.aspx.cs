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
    public partial class Category : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if(Page.IsPostBack)
            {
                dgViewCat.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtName.Text = "";
            lblMessage.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCatID.Text = dgViewCat.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewCat.SelectedRow.Cells[2].Text;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txtName.Text != "")
            {
                using(con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand sqlCMD = new SqlCommand("Select Categories.Name from Categories where Categories.Name = '"+txtName.Text+"'", con);
                    adapter = new SqlDataAdapter(sqlCMD);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    if(dt.Rows.Count > 0)
                    {
                        lblErrorMessage.Text = "WARNING! This category is already exists. Please insert a new category name.";
                        lblMessage.Text = "";
                    }

                    else
                    {
                        cmd = new SqlCommand("Insert Into Categories (Name) Values (@Name)", con);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        DataLoad();
                        lblErrorMessage.Text = "";
                        ClearAllData();
                    }
                }
            }
            else
            {
                lblMessage.Text = "WARNING! Please enter a category name.";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Categories Set Name=@Name Where ID=@catid", con);
                    cmd.Parameters.AddWithValue("@Name", txtName.Text);
                    cmd.Parameters.AddWithValue("@catid", lblCatID.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "Please enter a category name";
            }
        }
    }
}