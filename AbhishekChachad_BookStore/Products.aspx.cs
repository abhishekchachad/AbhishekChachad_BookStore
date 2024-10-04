﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbhishekChachad_BookStore
{
    public partial class Products : System.Web.UI.Page
    {
        private Book selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            //1-if the page didn't post back(first time to use it)
            if (IsPostBack == false)
            {
                //to load and display the data in ddlProducts
                ddlBooks.DataBind();
            }

            //2-Get and show the selected product on every load
            selectedProduct = this.GetSelectedProduct();

            //3- Display the data 
            lblName.Text = selectedProduct.Title;
            lblShortDescription.Text = selectedProduct.Author;
            lblLongDescription.Text = selectedProduct.PublishedDate.ToString();
            lblUnitPrice.Text = selectedProduct.Price.ToString("c") + " each";
            imgBook.ImageUrl = selectedProduct.BookImage;

        }


        protected Book GetSelectedProduct()
        {
            //Create DataView to retrieve selected records 
            // A DataView enables you to create different views of the data stored in a DataTable,
            DataView productsTable = (DataView)
                      //Get all the records from data source 
                      SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //Add Filter:
            //Retrieve a selected row [not all the records]
            productsTable.RowFilter =
                "BookID = '" + ddlBooks.SelectedValue + "'";
            //get the first row 
            DataRowView row = productsTable[0];
            // -- -----------------------------------------------------
            //Createt Object from product
            Book p = new Book();
            //Get Product ID from row
            p.BookID = Convert.ToInt32(row["BookID"].ToString());
            //Get Product Name
            p.Title = row["Title"].ToString();

            p.Author = row["Author"].ToString();

            p.PublishedDate = Convert.ToInt32(row["PublishedDate"].ToString());

            p.Price = (decimal)row["Price"];

            p.BookImage = "~/Images/" + row["BookImage"].ToString();

            return p;
            //--------------------------------------------------------- 
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //--------------------------------------------------
                //get cart from session state and selected item 
                //from cart
                //if we don't have it, create Cart in the session
                //retrun it as list 
                CartItemList cart = CartItemList.GetCartOrCreateIt(); //CartItemList.GetCart();
                //--------------------------------------------------
                //find this item in the cart that we have it in session
                CartItem cartItem = cart[selectedProduct.BookID.ToString()];
                //--------------------------------------------------
                //if item isn't in cart, add it; 
                //otherwise, increase its quantity
                if (cartItem == null)
                {
                    //add the product to the cart
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    //update the quantity
                    cartItem.AddQuantity(
                        Convert.ToInt32(txtQuantity.Text));
                }
                //go to Cart page
                Response.Redirect("~/Cart.aspx");
            }

        }
    }
}