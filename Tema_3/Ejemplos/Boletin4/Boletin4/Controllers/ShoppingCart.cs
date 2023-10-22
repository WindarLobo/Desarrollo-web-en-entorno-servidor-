using Boletin4.Models;
using Microsoft.AspNetCore.Mvc;
using static Boletin4.Models.ProductoViewModel;

namespace Boletin4.Controllers
{
    public class ShoppingCartController : Controller
    {
        private static List<ShoppingCartItem> cart = new List<ShoppingCartItem>();

        public IActionResult Index()
        {
            return View(AddToCart);
        }

        public IActionResult AddToCart(int productId)
        {
            var product = ProductoController.products.FirstOrDefault(p => p.Id == productId);
            if (product != null)
            {
                var cartItem = cart.FirstOrDefault(item => item.Product.Id == productId);
                if (cartItem != null)
                {
                    cartItem.Quantity++;
                }
                else
                {
                    cart.Add(new ShoppingCartItem { Product = product, Quantity = 1 });
                }
            }
            return RedirectToAction("Index", "Producto");
        }
    }
}
