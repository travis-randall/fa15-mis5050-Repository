using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductCatalog
/// </summary>
public class ProductCatalog
{
    private List<TaxableProduct> products = new List<TaxableProduct>();

    public ProductCatalog()
    {
        
    }

    public void AddProduct(string name, decimal price, string imageUrl)
    {
        TaxableProduct temp1 = new TaxableProduct(name, price, imageUrl);
        products.Add(temp1);
    }

    public Product GetHighPricedProduct()
    {
        int highPrice = 0;

        foreach (Product temp in products) {
            if (temp.Price > products.ElementAt(highPrice).Price)
            {
                highPrice = products.IndexOf((TaxableProduct)temp);
            }
        }
        return products.ElementAt(highPrice);
    }

    public string GetCatalogHtml()
    {
        string catalog = "";
        foreach (Product temp in products)
        {
            catalog += temp.GetHtml();
        }
        return catalog;
    }
}