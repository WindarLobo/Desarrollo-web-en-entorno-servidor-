using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Activida2.Models;

namespace Activida2.Controllers
{
    public class ProductoesController : Controller
    {
        private readonly BD_ProductosContext _context;

        public ProductoesController(BD_ProductosContext context)
        {
            _context = context;
        }

        // GET: Productoes

        [HttpGet]
        [Route("")]
        [Route("Productoes")]
        [Route("Productoes/Index")]
        public async Task<IActionResult> Index()
        {
              return _context.Productos != null ? 
                          View(await _context.Productos.ToListAsync()) :
                          Problem("Entity set 'BD_ProductosContext.Productos'  is null.");
        }

       
    }
}
