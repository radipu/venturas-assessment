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
    public partial class Item : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCategory.Items.Add(new ListItem("--Select Customer--", ""));
                ddlCategory.AppendDataBoundItems = true;
                String strConnString = ConfigurationManager
                     .ConnectionStrings["dbcon"].ConnectionString;
                String strQuery = "select * from Categories";
                SqlConnection con = new SqlConnection(strConnString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlCategory.DataSource = cmd.ExecuteReader();
                    ddlCategory.DataTextField = "Name";
                    ddlCategory.DataValueField = "Name";
                    ddlCategory.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewItem.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(txtName.Text != "" && txtCat.Text != "" && txtExp.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Items (itemName, itemCategory, itemExpDate) Values (@itemName, @itemCategory, @itemExpDate)", con);
                    cmd.Parameters.AddWithValue("@itemName", txtName.Text);
                    cmd.Parameters.AddWithValue("@itemCategory", txtCat.Text);
                    cmd.Parameters.AddWithValue("@itemExpDate", txtExp.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            
            else
            {
                lblMessage.Text = "Please fill the input fields";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtCat.Text != "" && txtExp.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Items SET itemName=@itemName, itemCategory=@itemCategory, itemExpDate=@itemExpDate WHERE Id=@itemId", con);
                    cmd.Parameters.AddWithValue("@itemName", txtName.Text);
                    cmd.Parameters.AddWithValue("@itemCategory", txtCat.Text);
                    cmd.Parameters.AddWithValue("@itemExpDate", txtExp.Text);
                    cmd.Parameters.AddWithValue("@itemId", lblItemId.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }

            else
            {
                lblMessage.Text = "Please fill the input fields";
            }
        }
        
        public void ClearAllData()
        {
            txtName.Text = "";
            txtCat.Text = "";
            txtExp.Text = "";
            lblMessage.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblItemId.Text = dgViewItem.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewItem.SelectedRow.Cells[2].Text;
            txtCat.Text = dgViewItem.SelectedRow.Cells[3].Text;
            txtExp.Text = dgViewItem.SelectedRow.Cells[4].Text;
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager
                           .ConnectionStrings["dbcon"].ConnectionString;
            String strQuery = "select * from Categories where" +
                              " Name = @Name";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Name", ddlCategory.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtCat.Text = sdr["Name"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}