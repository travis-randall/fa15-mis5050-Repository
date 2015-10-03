using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class C_Sharp_ProductCatalogTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductCatalog catalog = new ProductCatalog();
        catalog.AddProduct("microwave", 30.95M, "microwave.jpg");
        catalog.AddProduct("mixer", 15.95M, "mixer.jpg");
        catalog.AddProduct("toaster", 5.95M, "toaster.jpg");

        Response.Write(catalog.GetCatalogHtml());

        TaxableProduct highPrice = (TaxableProduct)catalog.GetHighPricedProduct();
        Response.Write("<p>" + highPrice.Name + 
            " is highest price at $" + highPrice.TotalPrice.ToString());

    }
}