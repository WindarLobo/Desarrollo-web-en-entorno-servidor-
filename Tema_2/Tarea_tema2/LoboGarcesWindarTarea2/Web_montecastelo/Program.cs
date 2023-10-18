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
  
            app.MapControllerRoute(
              name: "default",// ASP.NET Core, una "ruta" se refiere a la URL que se utiliza para acceder a una página o recurso específico en tu aplicación.
                pattern: "{controller=Home}/{action=Index}"); //enrutamiento controller=MiCurriculum  correctamente en tu aplicación ASP.NET Core.

            app.Run();
        }
    }
}
