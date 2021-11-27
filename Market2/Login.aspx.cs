using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //****************For TitleHEader**************************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Login";
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Users.Where(c => c.UserName == TxtUserName.Text && c.Password == TxtPassword.Text);

            if (q.Count() > 0)
            {
                Session.Add("Login1", TxtUserName.Text);
                Response.Redirect("AdminPanel.aspx");
                return;
            }
            else
            {
                Response.Redirect("Login.aspx");
                return;
            }
        }
    }
}