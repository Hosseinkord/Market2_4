using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class AdminPanel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login1"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }
            else
            {
                //****************For TitleHeader*************************
                DataClasses1DataContext db = new DataClasses1DataContext();
                var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
                this.Title = q.Title + "|" + "AdminPanel";
            }
        }
    }
}