using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace DEVRE
{
    public partial class ShoppingCartViewerWebUserControl : System.Web.UI.UserControl
    {
        Cart shoppingCart;
        public decimal cartTotal = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) bindCart();
        }

        public void bindCart()
        {
            shoppingCart = (Cart)Session["ShoppingCart"];

            if (shoppingCart == null)
            {
                ShoppingCartRepeater.DataSource
                ShoppingCartRepeater.DataSource = null;
            }
            else
            {
                cartTotal = shoppingCart.Total;
                ShoppingCartRepeater.DataSource = shoppingCart.CartItems;
            }
            ShoppingCartRepeater.DataBind();
        }

    }
}