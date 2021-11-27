using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Look_outs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //****************For TitleHeader**************************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Look Outs";
            //********************************
            //DataClasses1DataContext db = new DataClasses1DataContext();
            //var q = db.tbl_Comments;
            //ListView1.DataSource = q;
            //ListView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_del")
            {
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);

                DataClasses1DataContext db = new DataClasses1DataContext();
                var q = db.tbl_Comments.Where(c => c.Id == del1).SingleOrDefault();

                db.tbl_Comments.DeleteOnSubmit(q);
                db.SubmitChanges();
                GridView1.DataBind();
            }
        }
    }
}