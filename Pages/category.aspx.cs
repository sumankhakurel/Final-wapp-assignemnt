using Assignment.assignment;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Final_wapp_assignemnt.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AlertMessage"] != null)
            {
                string alertMessage = Session["AlertMessage"].ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{alertMessage}');", true);
                Session.Remove("AlertMessage"); // Remove the message from the session
            }
            if (Session["AlertMessage3"] != null)
            {
                string alertMessage = Session["AlertMessage3"].ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{alertMessage}');", true);
                Session.Remove("AlertMessage3"); // Remove the message from the session
            }
            if (Session["AlertMessage4"] != null)
            {
                string alertMessage = Session["AlertMessage4"].ToString();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{alertMessage}');", true);
                Session.Remove("AlertMessage4"); // Remove the message from the session
            }
        }



        protected void Button2_Click1(object sender, EventArgs e)
        {


            
                HttpPostedFile file = customFile.PostedFile;
                string fileName = Path.GetFileName(file.FileName);
                string fileExtension = Path.GetExtension(fileName);
                string uniqueFileName = Guid.NewGuid().ToString() + fileExtension;
                string path = Server.MapPath("~/Image/") + uniqueFileName;


                try
                {
                    file.SaveAs(path);
                }
                catch (Exception ex)
                {
                    Session["AlertMessage"] = "Error: " + ex.Message;
                }


                // Get the form data
                string name = fullName.Value;
                string desc = description.Value;
                string image = ("../Image/") + uniqueFileName;
                String cat = cate.Value;
                String catn = catgn.Value;

            // Create a connection to the database
            string strcon = ConfigurationManager.ConnectionStrings["GlamEdyConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);

                // Create an SQL INSERT statement
                string sql = "INSERT INTO categories (name,description , url, subcategories, categoriesnumbers) VALUES (@Name, @desc, @image, @cat, @catn)";

                // Create a SqlCommand object with the INSERT statement and the connection object
                SqlCommand cmd = new SqlCommand(sql, conn);

                // Add the form data as parameters to the SqlCommand object
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@desc", desc);
                cmd.Parameters.AddWithValue("@image", image);
                cmd.Parameters.AddWithValue("@cat", cat);
                cmd.Parameters.AddWithValue("@catn", catn);



                // Open the connection to the database
                conn.Open();

                // Execute the INSERT statement
                int rowsInserted = cmd.ExecuteNonQuery();

                // Close the connection to the database
                conn.Close();

                // Display a success message
                if (rowsInserted > 0)
                {
                    Session["AlertMessage"] = "Sucess";

                }
                else
                {
                    Session["AlertMessage"] = "fail to insert row";
                }
            
            Response.Redirect("../Pages/category.aspx");
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
           
            
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            string myValue = Request.Form["deletename"];

            // Create a connection to the database
            string strcon = ConfigurationManager.ConnectionStrings["GlamEdyConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);

            // Create an SQL INSERT statement
            string sql = "DELETE FROM categories WHERE (name=@myValue)";
            // Create a SqlCommand object with the INSERT statement and the connection object
            SqlCommand cmd = new SqlCommand(sql, conn);

            // Add the form data as parameters to the SqlCommand object
            cmd.Parameters.AddWithValue("@myValue", myValue);



            // Open the connection to the database
            conn.Open();

            // Execute the INSERT statement
            int rowsInserted = cmd.ExecuteNonQuery();

            // Close the connection to the database
            conn.Close();

            // Display a success message
            if (rowsInserted > 0)
            {
                Session["AlertMessage3"] = "Sucess";

            }
            else
            {
                Session["AlertMessage3"] = "fail to insert row";
            }

            Response.Redirect("../Pages/category.aspx");

        }


        protected void Button4_Click4(object sender, EventArgs e)
        {

          

            string catname = Request.Form["editCategoryName"];
            string CatDesc = Request.Form["editCategoryDescription"];
            string subcat = Request.Form["editsubcategories"];
            string uid = Request.Form["edituid"];
            
            string cat = Request.Form["editCategories"];

            HttpPostedFile file = Request.Files["editCategoryImage"];

            string fileName = Path.GetFileName(file.FileName);
            string fileExtension = Path.GetExtension(fileName);
            string uniqueFileName = Guid.NewGuid().ToString() + fileExtension;
            string path = Server.MapPath("~/Image/") + uniqueFileName;
           

           
            


           

            


            // Create a connection to the database
            string strcon = ConfigurationManager.ConnectionStrings["GlamEdyConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strcon);


           

                try
                {
                    file.SaveAs(path);
                }
                catch (Exception ex)
                {
                    Session["AlertMessage"] = "Error: " + ex.Message;
                }
                // Get the form data

               string image = ("../Image/") + uniqueFileName;
            
           
           
           


            // Create an SQL UPDATE statement
            string sql = "UPDATE categories SET name = @Name, description = @desc, url = @image, subcategories = @cat, categoriesnumbers = @catn WHERE categoryid = @uid";

            // Create a SqlCommand object with the UPDATE statement and the connection object
            SqlCommand cmd = new SqlCommand(sql, conn);

           
            // Add the form data as parameters to the SqlCommand object
            cmd.Parameters.AddWithValue("@Name", catname);
            cmd.Parameters.AddWithValue("@desc", CatDesc);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@cat", subcat);
            cmd.Parameters.AddWithValue("@catn", cat);
            cmd.Parameters.AddWithValue("@uid", uid);




            // Open the connection to the database
            conn.Open();

            // Execute the INSERT statement
            int rowsUpdated = cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('pass');", true);

            // Close the connection to the database
            conn.Close();

            // Display a success message
            if (rowsUpdated > 0)
            {
                Session["AlertMessage4"] = "Sucess Update";

            }
            else
            {
                Session["AlertMessage4"] = uid;
            }

            Response.Redirect("../Pages/category.aspx");

        }



    }
}
    

