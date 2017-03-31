using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewClient
{
    public partial class Loginpage : System.Web.UI.Page
    {
        static HttpClient client = new HttpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
           // client.BaseAddress = new Uri("http://localhost:59082/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email, password;
            email = TextBox1.Text;
            password = TextBox2.Text;
            UserLogin(email, password);     
        }

        private async void UserLogin(string email, string password)
        {
            var response = await client.GetAsync("http://localhost:59082/login/get");
            //var response = await client.GetAsync("localhost:59082/login/get?email="+TextBox1.Text+"&pword="+TextBox2.Text);
            if (response.IsSuccessStatusCode)
            {
                string data = await response.Content.ReadAsStringAsync();
                Label1.Text = "Thayi gayu!!!-----------------   " + data;
            }
            else
            {
                Label1.Text = ""; 
            }
            
        }
    }
}