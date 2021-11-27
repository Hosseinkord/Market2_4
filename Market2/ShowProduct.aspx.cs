using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["Id"];

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Baskets.Where(c => c.UserId == Id);

            Repeater1.DataSource = q;
            Repeater1.DataBind();
        }
    }
}