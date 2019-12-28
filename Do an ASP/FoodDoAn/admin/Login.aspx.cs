using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodDoAn.HttpCode;
namespace FoodDoAn.admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dangnhap"] != null)
            {
                Response.Redirect("Defau");
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if(Session["dangnhap"] != null)
            {
                Session["dangnhap"] = null;
            }
            string user = txt_username.Text;
            string pass = txt_PassWord.Text;
            Member m = new Member(user,pass);
            DataTable td = new DataTable();
            td = m.checkLogin(user,pass); 
            if(td.Rows.Count > 0)
            {
                Session["dangnhap"] = user;
                Response.Redirect("Defau.aspx");
            }
            else
            {
               
            }
        }
    }
}