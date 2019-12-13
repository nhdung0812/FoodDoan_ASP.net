using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodDoAn.HttpCode;
namespace FoodDoAn
{

    public partial class danhsachsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }   

        protected void rptDSTV_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "edit")
            {
                string username = e.CommandArgument.ToString();

                string hash = Server.UrlEncode(username);
                
                Response.Redirect("~/Admin/member_edit.aspx?username="+ hash);
                
            }
            if (e.CommandName == "delete")
            {
                
                string UserName = e.CommandArgument.ToString();
                Member m = new Member(UserName);

                if(m.delect())
                {

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "concac", "delete()", true);
                    Response.Redirect("~/Admin/danhsachsp.aspx");
                }
            }
        }

        
    }
}