using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Ejercicio3.Models;

namespace Ejercicio3.Controllers
{
    public class ProductoController : Controller
    {
        private readonly BD_ProductosContext _context;

        public ProductoController(BD_ProductosContext context)
        {
            _context = context;
        }
        [HttpGet]
        [Route("")]
        [Route("Producto")]
        [Route("Producto/Index")]

        // GET: Producto
        public async Task<IActionResult> Index()
        {
              return _context.Productos != null ? 
                          View(await _context.Productos.ToListAsync()) :
                          Problem("Entity set 'BD_ProductosContext.Productos'  is null.");
        }

        // GET: Producto/Details/5
        [HttpGet]
        [Route("Producto/Details/{id}")]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Productos == null)
            {
                return NotFound();
            }

            var producto = await _context.Productos
                .FirstOrDefaultAsync(m => m.Id == id);
            if (producto == null)
            {
                return NotFound();
            }

            return View(producto);
        }

     
      
    }
}
