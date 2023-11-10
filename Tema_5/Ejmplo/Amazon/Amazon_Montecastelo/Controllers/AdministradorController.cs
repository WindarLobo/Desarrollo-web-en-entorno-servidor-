using Amazon_Montecastelo.Database;
using Amazon_Montecastelo.Database.Models;
using Amazon_Montecastelo.Database.Repositorios;
using LoboGarcesWindarTarea3;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Amazon_Montecastelo.Controllers
{
  
    public class AdministradorController : Controller
    {
        private readonly ProductoReposiotiro _productoRepositorio;

        public AdministradorController(AmazonContext context)
        {
            _productoRepositorio = new ProductoReposiotiro(context);

        }
        [Route("/")]
        [Route("/Administrador")]
        [Route("/Administrador/Producto")]
        public IActionResult Producto()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var productos = _productoRepositorio.GetAllProducto();

            return View(productos);
        }
        [Route("/Administrador/agregar")]
        public IActionResult Agregar()
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            return View(new Producto());
        }

        [HttpPost]
        [Route("/Administrador/Create")]
        public IActionResult Create()
        {
            var Id = int.Parse(HttpContext.Request.Form["ProductoID"]);
            var nombre = HttpContext.Request.Form["Nombre"];
            var descripcion = HttpContext.Request.Form["Descripcion"];
            var precio = decimal.Parse(HttpContext.Request.Form["Precio"].ToString().Replace(".", ","));



            var producto = _productoRepositorio.GetProductoByID(Id);

            if (producto == null)
            {
                _productoRepositorio.Save(new Producto
                {
                    ProductoID = Id,
                    Nombre = nombre,
                    Descripcion = descripcion,
                    Precio = precio,

                });
            }
            else
            {
                producto.Nombre = nombre;
                producto.Descripcion = descripcion;
                producto.Precio = precio;
                _productoRepositorio.Update();
            }

            var usuarios = _productoRepositorio.GetAllProducto();

            return View("Producto", usuarios);
        }

        [Route("/Producto/edit/{Id}")]
        public IActionResult Edit(int Id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            var producto = _productoRepositorio.GetProductoByID(Id);

            return View("Agregar", producto);
        }

        [Route("/Administrador/delete/{Id}")]
        public IActionResult Delete(int id)
        {
            if (!GlobalInfo.IsLogged)
            {
                return View(GlobalInfo.LoginView);
            }
            _productoRepositorio.Delete(id);

            var producto = _productoRepositorio.GetAllProducto();

            return View("Producto", producto);
        }



    }
}
