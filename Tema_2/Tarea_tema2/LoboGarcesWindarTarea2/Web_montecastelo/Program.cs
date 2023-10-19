using System;

namespace Web_montecastelo
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/MiCurriculum/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }


            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            /*Este código configura una ruta predeterminada para los controladores.
            Cuando se accede a la aplicación sin especificar un controlador o una acción en la URL, la aplicación dirigirá la solicitud al controlador "Home" y a la acción "Index" por defecto.*/

            app.MapControllerRoute(
              name: "default",
                pattern: "{controller=Home}/{action=Index}"); 

            app.Run();
        }
    }
}
