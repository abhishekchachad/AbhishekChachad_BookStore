using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbhishekChachad_BookStore
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["FirstName"] != null)
                {
                    string firstName = Session["FirstName"].ToString();
                    lblWelcome.InnerText = "Welcome, " + firstName + "!";
                }
            }

        }
    }
}