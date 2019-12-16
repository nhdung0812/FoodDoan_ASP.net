using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodDoAn
{
    public partial class Food_Type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_Ngay.Text = DateTime.Now.ToString();
            txt_Ngay.Enabled = false;
        }
    }
}