using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Pays.Where(c => c.NameAndFamily == TxtShopper.Text).Single();
            int Id = q.Id;
            string Name = q.NameAndFamily;
            string Tel = q.Tel;
            string PostCode = q.PostCode;

            Response.Redirect("Report1.aspx?Id=" + Id + "&NameAndFamily=" + Name + "&Tel=" + Tel + "&PostCode=" + PostCode);
        }
    }
}