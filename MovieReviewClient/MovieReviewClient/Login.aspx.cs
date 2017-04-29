using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Serialization;
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
            //checking flag value
            //if flag = 1 then login successfull 


        }

        private async void AdminLogin(string text1, string text2)
        {
            throw new NotImplementedException();
        }

        private async void Userlogin(string text1, string text2)
        {
            try
            {
                string url = "http://localhost:50115/Login?email=" + text1 + "&pwd=" + text2;
                var response = await client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    string data = await response.Content.ReadAsStringAsync();
                    var result = JsonConvert.DeserializeObject<user>(data);

                    Session["email"] = result.email;
                    if (Session["email"] == null)
                    {
                        Label1.Text = "Session was not created properly";
                    }
                    else
                    {
                        //Label1.Text = Session["email"].ToString();
                        Response.Redirect("HomePage.aspx");
                        Label1.Text = Session["email"].ToString();
                    }
                   
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Wrong Credentials!!!";
                    
                }
            }
            catch (Exception e)
            {
                Label1.Text = e.ToString();
               
            }
        }
    }
}