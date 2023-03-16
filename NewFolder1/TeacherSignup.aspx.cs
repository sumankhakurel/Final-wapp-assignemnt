﻿using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Assignment.assignment
{
    public partial class TeacherSignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            try
            {

                string connectionString = "Data Source=ARUNPC\\SQLEXPRESS; Initial Catalog=GlamEdy;Integrated Security=True";
                SqlConnection conn = new SqlConnection(connectionString);
                string sql = "INSERT INTO teachers(name,phone_number, email, password, country) values(@Full_Name,@phone_number, @Email, @Password, @Country)";
                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@Full_Name", fullname.Text);
                cmd.Parameters.AddWithValue("@phone_number", phone_number.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@Password", password.Text);
                cmd.Parameters.AddWithValue("@Country", country.SelectedItem.Value);


                conn.Open();

                int rowsInserted = cmd.ExecuteNonQuery();

                conn.Close();
                if (rowsInserted > 0)
                {
                    Response.Write("<script>alert('Sign Up Successful.');</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Sign Up UNSuccessful. ');</script>");
                }





            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}