﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbhishekChachad_BookStore
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Redirect to the Thank You page after successful validation
                Response.Redirect("~/Thankyou.aspx");
            }
        }
    }
}