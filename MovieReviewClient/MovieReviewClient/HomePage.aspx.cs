using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewClient
{
    public partial class HomePage : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            if (Session["email"] == null)
            {
                Label1.Text = "WelCome, but Session was not created";        
            }
            else
            {
                Label1.Text = "Welcome " + Session["email"].ToString();
            }
            getUsers();
            
        }

        private async void getUsers()
        {
            string url = "http://localhost:50115/api/users";
            var response = await client.GetAsync(url);
            if (response.IsSuccessStatusCode)
            {
                //string data = await response.Content.ReadAsStringAsync();
                //var result = JsonConvert.DeserializeObject<string>(data);
                //GridView1.DataSource = result;
                //GridView1.DataBind();
                //Label1.Text = result;
            }
            else
            {
                Label1.Text = "Some Error occured!!!!!!!!!";
            }

        }
    }
}