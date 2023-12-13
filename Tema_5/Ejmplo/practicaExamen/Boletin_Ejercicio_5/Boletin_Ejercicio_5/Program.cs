using Boletin_Ejercicio_5.DataBase;
using Boletin_Ejercicio_5.DataBase.Repository;

namespace Boletin_Ejercicio_5
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            builder.Services.AddSingleton(new Conexion(builder.Configuration.GetConnectionString("ConexionMontecastelo")));

            //Registro de interfaz 


            builder.Services.AddScoped<IFabricaRepository, FabricaRepository>();
            builder.Services.AddScoped<IProductoRepository, ProductoRepository>();


            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapControllers();

            app.Run();
        }
    }
}