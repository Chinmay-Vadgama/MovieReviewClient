using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewClient
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
            user u = new user();
            u.email = Textbox1.Text;
            u.pwd = Textbox2.Text;
            RegisterUser(u);


        }

        private async void RegisterUser(user u)
        {
            var jsoncontent = JsonConvert.SerializeObject(u);
            var content = new StringContent(jsoncontent, Encoding.UTF8, "application/json");
            var response = await client.PostAsync("http://localhost:50115/UserSignUp", content);
            if (response.IsSuccessStatusCode)
            {
              
                Response.Redirect("Login.aspx");
            }
            else {
                Label2.Text = "Some Error Occured :(";
            }
           
        }
    }
}