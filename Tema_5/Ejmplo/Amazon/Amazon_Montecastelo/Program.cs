using Amazon_Montecastelo.Database;
using Amazon_Montecastelo.Database.Repositorios;
using Microsoft.EntityFrameworkCore;

namespace Amazon_Montecastelo
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Configurar servicios
            builder.Services.AddControllersWithViews();
            builder.Services.AddScoped<VentasRepositorio>();
            builder.Services.AddScoped<ProductoReposiotiro>();
            builder.Services.AddDbContext<AmazonContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("ConexionMontecastelo")));
            builder.Services.AddSession();

            var app = builder.Build();

            // Configurar el pipeline de solicitud HTTP
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error"); // Manejo de excepciones
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();
            app.UseAuthorization();

            app.UseSession(); // Middleware de sesión

            app.MapControllers();
            

            app.Run();
        }

    }
}
