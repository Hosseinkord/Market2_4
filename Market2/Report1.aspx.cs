using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = int.Parse(Request.QueryString["Id"]);
            string Name = Request.QueryString["NameAndFamily"];
            string Tel = Request.QueryString["Tel"];
            string PostCode = Request.QueryString["PostCode"];

            LblName.Text = Name;
            LblTel.Text = Tel;
            LblPostCode.Text = PostCode;

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Baskets.Where(c => c.UserId == Id.ToString());

            ListView1.DataSource = q;
            ListView1.DataBind();
        }
    }
}