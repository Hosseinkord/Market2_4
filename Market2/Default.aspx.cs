using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Posts;
            ListView1.DataSource = q.OrderByDescending(x=>x.Id);
            ListView1.DataBind();

            //***********For TitleHeader***********************************
            DataClasses1DataContext db1 = new DataClasses1DataContext();
            var Qery = db1.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = Qery.Title + "|" + "Home";
        }
    }
}