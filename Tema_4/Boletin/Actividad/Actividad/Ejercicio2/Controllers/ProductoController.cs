﻿using Ejercicio2.DataBase;
using Ejercicio2.DataBase.Models;
using Ejercicio2.DataBase.Repositorio;
using Microsoft.AspNetCore.Mvc;

namespace Ejercicio2.Controllers
{
    public class ProductoController : Controller
    {
        private readonly ProductoRepositorio _productoRepositorio;

        public ProductoController(TiendaContext context)
        {
            _productoRepositorio = new ProductoRepositorio(context);
        }

        [Route("/")]
        [Route("/Producto")]
        [Route("/Producto/Index")]
        public IActionResult Index()
        {
            var productos = _productoRepositorio.GetAllProducto();

            return View(productos);

        }
        [Route("/Producto/Detalle/{id?}")]
        public IActionResult Detalle(int id)
        {
            var productos = _productoRepositorio.GetProductoByID(id);


            return View(productos);
        }
        [Route("/Producto/agregar")]
        public IActionResult Agregar()
        {
            return View(new Producto());
        }

        [HttpPost]
        [Route("/Producto/create")]
        public IActionResult Create()
        {
            var Id = int.Parse(HttpContext.Request.Form["Codigo"]);
            var nombre = HttpContext.Request.Form["Nombre"];
            var precio = double.Parse(HttpContext.Request.Form["Precio"].ToString().Replace(".", ","));
            var  fabricante =int.Parse(HttpContext.Request.Form["codigo_fabricante"]);



            var productos = _productoRepositorio.GetProductoByID(Id);

            if (productos == null)
            {
                _productoRepositorio.Save(new Producto
                {
                    Codigo = Id,
                    Nombre = nombre,
                    Precio = (double)precio,
                    codigo_fabricante=fabricante,

                }); ;
            }
            else
            {
                productos.Nombre = nombre;
                productos.Precio = (double)precio;
                productos.codigo_fabricante = fabricante;
                _productoRepositorio.Update();
            }

            var productost = _productoRepositorio.GetAllProducto();

            return View("Index", productost);
        }


        [Route("/Producto/delete/{Id}")]
        public IActionResult Delete(int id)
        {
            _productoRepositorio.Delete(id);

            var pokemons = _productoRepositorio.GetAllProducto();

            return View("Index", pokemons);
        }

        [Route("/Producto/edit/{Id}")]
        public IActionResult Edit(int Id)
        {
            var producto = _productoRepositorio.GetProductoByID(Id);

            return View("Agregar", producto);
        }

    }
}

