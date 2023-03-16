using System;
using System.Data.SqlClient;

namespace Assignment.assignment
{
    public partial class TeachersLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is already logged in
            if (Session["Email"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Define the connection string
            string connectionString = "Data Source=ARUNPC\\SQLEXPRESS; Initial Catalog=GlamEdy;Integrated Security=True";

            // Define the SELECT statement with a WHERE clause
            string selectStatement = "SELECT Email FROM teachers WHERE email = @Email AND password = @Password";

            // Create a new SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a new SqlCommand object
                using (SqlCommand command = new SqlCommand(selectStatement, connection))
                {
                    // Add parameters to the SqlCommand object
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);
                    command.Parameters.AddWithValue("@Password", txtPassword.Text);

                    // Open the connection
                    connection.Open();

                    // Execute the SELECT statement and store the result
                    SqlDataReader reader = command.ExecuteReader();

                    // Check if the user exists in the database
                    if (reader.Read())
                    {
                        // User exists, store the UserID in a session variable
                        Session["Email"] = reader["Email"].ToString();

                        // Close the SqlDataReader object
                        reader.Close();

                        // Redirect to the home page
                        Response.Redirect("TeacherHomePage.aspx");
                    }
                    else
                    {
                        // User does not exist, display an error message
                        lblError.Text = "Invalid email or password.";
                        lblError.Visible = true;
                    }

                    // Close the connection
                    connection.Close();
                }
                // Handle the TextChanged event of the txtPassword control here
            }
        }
    }
}