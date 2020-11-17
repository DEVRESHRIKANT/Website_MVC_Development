using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
namespace DEVRE
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            // To disable tracing in your application, please comment out or remove the following line of code  
            // For more information, refer to: http://www.asp.net/web-api  
            //config.EnableSystemDiagnosticsTracing();

            // Adding formatter for Json   
            config.Formatters.JsonFormatter.MediaTypeMappings.Add(
                new QueryStringMapping("type", "json", new MediaTypeHeaderValue("application/json")));

            // Adding formatter for XML   
            config.Formatters.XmlFormatter.MediaTypeMappings.Add(
                new QueryStringMapping("type", "xml", new MediaTypeHeaderValue("application/xml")));

        }
    }
}
