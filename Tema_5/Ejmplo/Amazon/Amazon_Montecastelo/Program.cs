using Amazon_Montecastelo.Database;
using Amazon_Montecastelo.Database.Repositorios;

namespace Amazon_Montecastelo
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Configurar servicios

            builder.Services.AddControllersWithViews();
            builder.Services.AddSession();

            //Cadena de conexion 

            builder.Services.AddSingleton(new Conexion(builder.Configuration.GetConnectionString("ConexionMontecastelo")));

            //Registro de interfaz 
            builder.Services.AddScoped<IProductoRepository, ProductoRepository>();

            builder.Services.AddScoped<ICarritoRepository, CarritoRepository>();

            builder.Services.AddScoped<IUsuarioRepository,UsuarioRepository>();

            builder.Services.AddScoped<IVentaRepository, VentaRepository>();


            var app = builder.Build();

            // Configurar el pipeline de solicitud HTTP
            if (!app.Environment.IsDevelopment())
            {
               
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
