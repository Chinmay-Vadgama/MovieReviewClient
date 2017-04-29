using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewClient
{
    public partial class AddMovie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 0;
       
            for (i = 1947; i < DateTime.Today.Year; i++)
            {
                year.Items.Add(i.ToString());
                
            }
        }
    }
}