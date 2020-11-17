using System;
using System.Net;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.SessionState;
using System.Data.Entity;
using System.Linq;

namespace DEVRE
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        Cart shoppingCart;
        public decimal cartTotal = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindCart();
            }
        }

        public void bindCart()
        {
            shoppingCart = (Cart)Session["ShoppingCart"];

            if (shoppingCart == null)
            {
                ShoppingCartRepeater.DataSource = null;
                messageLabel.Text = "Your Shopping Cart Is Empty";
            }
            else
            {
                cartTotal = shoppingCart.Total;
                ShoppingCartRepeater.DataSource = shoppingCart.CartItems;
                messageLabel.Text = "My Cart";
            }            
            ShoppingCartRepeater.DataBind();
        }

        protected void ShoppingCartRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName.ToString())
            {
                case "RemoveAll":
                    Session["ShoppingCart"] = null;
                    break;
                case "ChangeQty":
                    if (Session["ShoppingCart"] != null) shoppingCart = (Cart)Session["ShoppingCart"];
                    else break;

                    changeQty();
                    Session["ShoppingCart"] = shoppingCart;
                    break;
                case "Store":
                    Response.Redirect("Categories.aspx");
                    break;
                case "Checkout":
                    Response.Redirect("Checkout.aspx");
                    break;
            }

            bindCart();
        }

        public void changeQty()
        {
            TextBox qtyTextBox;
            HiddenField productIDHiddenField;
            CheckBox removeCheckBox;

            int qty = 0;
            int ProductID = 0;

            foreach (RepeaterItem row in ShoppingCartRepeater.Items)
            {
                qtyTextBox = (TextBox)row.FindControl("qtyTextBox");
                productIDHiddenField = (HiddenField)row.FindControl("ProductIDHiddenField");
                removeCheckBox = (CheckBox)row.FindControl("removeCheckBox");

                if (int.TryParse(WebUtility.InputText(qtyTextBox.Text, 10), out qty) &&
                    int.TryParse(WebUtility.InputText(productIDHiddenField.Value, 10), out ProductID))
                {
                    if (removeCheckBox.Checked || qty < 1) shoppingCart.Remove(ProductID);
                    else if (qty > 0) shoppingCart.SetQuantity(ProductID, qty);
                }

            }
        }
    }
}
