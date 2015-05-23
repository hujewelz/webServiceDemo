using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherForecast.WeatherService;

namespace WeatherForecast
{
    public partial class Weather : System.Web.UI.Page
    {
        private string path = @"~\icon\";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            WeatherWebService weatherS = new WeatherWebService();
            string[] result = new string[23];
            string city = City.Text.Trim();
            result = weatherS.getWeatherbyCityName("北京");
            if (result[8] == "")
            {
           
                Response.Write("暂时不支持您查询的城市");
            }
            else
            {
                WeatherImage.ImageUrl = path+ result[8] + "";
                WeatherGeneral.Text = result[1] + "" + result[6];
                WeatherDesc.Text = result[10];
               //Weatherge// = s[1] + " " + s[6];
                //textBox2.Text = s[10];
            }  

        }
    }
}