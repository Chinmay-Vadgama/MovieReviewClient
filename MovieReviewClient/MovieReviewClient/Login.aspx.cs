using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewClient
{
    public partial class Login : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            if (Page.IsPostBack)
            {
                Label1.Text = "You were Registered successfully..pls login again.";
            }
        }
     

        protected async void Button1_Click(object sender, EventArgs e)
        {
            String email, password;
            email = TextBox1.Text;
            password = TextBox2.Text;
            
            if (LoginType.Text.Equals("User"))
            {
                Userlogin(email, password);
            }
            else {
                AdminLogin(email,password);
            }


        }

        private async void AdminLogin(string text1, string text2)
        {
            throw new NotImplementedException();
        }

        private async void Userlogin(string text1, string text2)
        {

            string url = "http://localhost:50115/Login?email="+text1+"&pwd="+text2;
            var response = await client.GetAsync(url);
           
            if (response.IsSuccessStatusCode)
            {
                // Label1.Text = "It worked!!!";

                string data =await response.Content.ReadAsStringAsync();
                user u = new user();
                //    u.email =
                if (data == null)
                {
                    Label1.Text = "Data is null!!!";
                }
                else
                {
                    
                    Response.Redirect("HomePage.aspx");
                }
                
                

            }
            else
            {
               
                Label1.Visible=true;
                Label1.Text = "Wrong Credentials!!!";
            }
        }
    }
}