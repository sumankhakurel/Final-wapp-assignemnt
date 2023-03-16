using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Runtime.Remoting.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Final_wapp_assignemnt.Pages
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("admin.aspx");
            }

            if (!IsAuthorized())
            {
                Response.Redirect("admin.aspx");

            }
        }
            private bool IsAuthorized()
            {
                string username = Session["username"].ToString();

                // Check if the user is authorized to access the admin dashboard
                // This could involve checking the user's role or permissions

                // Return true if authorized, false otherwise
                if (username == "admin")
                {
                    return true;
                }
                return false;
            }
        protected void signout(object sender, EventArgs e)
        {
            Session.Clear(); // clear the user's session
            Response.Redirect("admin.aspx"); // redirect the user to the login page
        }
    }
    }

    
