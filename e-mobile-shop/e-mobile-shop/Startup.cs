using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using BotDetect.Web;
using e_mobile_shop.Data;
using e_mobile_shop.Models;
using e_mobile_shop.Models.Repository;
using e_mobile_shop.Models.Repository.DataExcuteRepository;
using e_mobile_shop.Models.Repository.EmailRepository;
using e_mobile_shop.Models.Repository.MobileShopRepository;
using e_mobile_shop.Models.Repository.SanPhamRepository;
using e_mobile_shop.Models.Services;

using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace e_mobile_shop
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();
            services.AddRazorPages();

            services.AddDbContext<eShopDbContext>(options =>
                    options.UseSqlServer(Configuration.GetConnectionString("eShopDbContextConnection")), ServiceLifetime.Transient);
           
            services.AddDbContext<ClientDbContext>(options =>
                   options.UseSqlServer(Configuration.GetConnectionString("eShopDbContextConnection")), ServiceLifetime.Transient);

            services.AddControllersWithViews().AddRazorRuntimeCompilation();
            services.AddControllersWithViews().AddNewtonsoftJson(options =>  options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore);
            services.AddSession();
            services.Configure<MailSettings>(Configuration.GetSection("MailSettings"));

            services.Configure<IdentityOptions>(options =>
            {
                // Default Password settingseShopDbContext
                options.Password.RequireDigit = false;
                options.Password.RequireLowercase = false;
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireUppercase = false;
                options.Password.RequiredLength = 6;
                options.Password.RequiredUniqueChars = 0;

                options.SignIn.RequireConfirmedEmail = true;
            });

            services.ConfigureApplicationCookie(options =>
            {
                // Cookie settings
                options.Cookie.HttpOnly = true;
                options.ExpireTimeSpan = TimeSpan.FromMinutes(5);

                options.LoginPath = "/Identity/Account/Login";
                options.AccessDeniedPath = "/Identity/Account/AccessDenied";
                options.SlidingExpiration = true;
            });

            services.AddAuthentication()
            .AddGoogle(options =>
            {
                //IConfigurationSection googleAuthNSection =
                //    Configuration.GetSection("Authentication:Google");

                //options.ClientId = googleAuthNSection["ClientId"];
                //options.ClientSecret = googleAuthNSection["ClientSecret"];
                options.ClientId = new ClientDbContext().Parameters.Find("4").Value;
                options.ClientSecret = new ClientDbContext().Parameters.Find("3").Value;
            });
            services.AddAuthentication().AddFacebook(facebookOptions =>
            {
                //facebookOptions.AppId = Configuration["Authentication:Facebook:AppId"];
                //facebookOptions.AppSecret = Configuration["Authentication:Facebook:AppSecret"];
                facebookOptions.AppId = new ClientDbContext().Parameters.Find("6").Value;
                facebookOptions.AppSecret = new ClientDbContext().Parameters.Find("5").Value;
            });

            services.AddTransient<IEmailSender, EmailSender>();

            services.Configure<AuthMessageSenderOptions>(option =>
            {
                option.SendGridUser = new ClientDbContext().Parameters.Find("1").Value;
                option.SendGridKey = new ClientDbContext().Parameters.Find("2").Value;
            });

            services.AddSignalR();
            services.AddTransient<IDonHangRepository, DonHangRepository>();
            services.AddTransient<IMobileShopRepository, MobileShopRepository>();
            services.AddTransient<ISanPhamRepository, SanPhamRepository>();
            services.AddTransient<IDataAccess, DataAccess>();
            services.AddTransient<IEmailService, EmailService>();
            services.AddRouting(options => options.LowercaseUrls = true);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();
            app.UseRouting();
            app.UseSession();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
                endpoints.MapHub<SignalServer>("/signalServer");

            });

        }
    }
}
