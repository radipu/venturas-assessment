using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Venturas.Models
{
    public class categoriesbusinesslogic
    {
        private string connectionstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        public void Add(Categories cat)
        {
            try
            {
                SqlConnection conn = new SqlConnection(connectionstring);
                SqlCommand cmd = new SqlCommand("insert_categories", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}