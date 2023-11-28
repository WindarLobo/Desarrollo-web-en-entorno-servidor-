
using LoboGarcesWindarTarea4.DataBase;
using LoboGarcesWindarTarea4.DataBase.Modelo;
using LoboGarcesWindarTarea4.DataBase.Repository;
using System.Drawing;

namespace LoboGarcesWindarTarea4
{
    public class Program
    {
        public static void Main(string[] args)
        {
           
           
          var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            //Cadena de conexion 

            builder.Services.AddSingleton(new Conexion(builder.Configuration.GetConnectionString("ConexionMontecastelo")));

            //Registro de interfaz 
            builder.Services.AddScoped<IPokemonRepository, PokemonRepository>();


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

            // Utilizo esta funcion app.MapControllers() para gestionar las ruta mediante atributos.
            app.MapControllers();

            app.Run();
        }
    }

}