using LoboGarcesWindarTarea3.Database;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;

namespace LoboGarcesWindarTarea3
{
    public class Program
    {

        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            //A�ado la cadena de conexi�n desde la configuraci�n de la aplicaci�n, esto permite que la aplicaci�n interact�e con una base de datos SQL Server.

            builder.Services.AddDbContext<InstitutoMontecasteloContext>(options =>
              options.UseSqlServer(builder.Configuration.GetConnectionString("ConexionTarea3")));


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