using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string username = Username.Text;
        string password = Password.Text;

        if (username.Equals("Player") && password.Equals("69allday"))
        {
            string url = "FrontPage.aspx";
            Response.Redirect(url);
        }
    }
}