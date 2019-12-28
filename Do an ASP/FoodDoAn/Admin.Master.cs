using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodDoAn
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["dangnhap"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    username.Text = Session["dangnhap"].ToString();
                }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["dangnhap"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}