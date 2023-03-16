using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_wapp_assignemnt.Pages
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["GlamEdyConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);

            string query = "SELECT COUNT(1) FROM admins WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@username", tbusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", tbpassword.Text.Trim());
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();

            if (count == 1)
            {
                Session["username"] = tbusername.Text.Trim();

                Response.Redirect("Homepage.aspx");
            }
            else
            {
                lblError.Text = "Invalid username or password.";
            }
        }
    }
}