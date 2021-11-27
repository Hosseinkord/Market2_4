using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Posts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //*******************For TitleHeader************************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Posts";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (flag == 0)
            {
                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("/images/" + filename));
                    DataClasses1DataContext db = new DataClasses1DataContext();
                    db.PInsertPosts(TxtTitle.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), TxtText.Text, int.Parse(TxtPrice.Text), "/images/" + FileUpload1.FileName);
                    db.SubmitChanges();
                    GridView1.DataBind();
                }
                else
                {
                    DataClasses1DataContext db = new DataClasses1DataContext();
                    db.PUpdatePosts(rowid, TxtTitle.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), TxtText.Text, int.Parse(TxtPrice.Text));
                    db.SubmitChanges();
                    GridView1.DataBind();

                }
            }
            else if(flag==1)
            {
                DataClasses1DataContext db = new DataClasses1DataContext();
                int Query = int.Parse(GridView1.Rows[rowid].Cells[0].Text);
                var date1 = db.tbl_Posts.Where(c => c.Id == Query).Single();
                string MyDate = date1.Date;
                db.PUpdatePosts(Query, TxtTitle.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), TxtText.Text, int.Parse(TxtPrice.Text));
                db.SubmitChanges();
                GridView1.DataBind();
            }
        }

        public static int flag = 0;
        public static int rowid = 0;
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_upd")
            {
                flag = 1;
                rowid = int.Parse(e.CommandArgument.ToString());
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);


                DataClasses1DataContext db = new DataClasses1DataContext();
                var Qdel = db.tbl_Posts.Where(c => c.Id == del1).Single();

                TxtTitle.Text = Qdel.Title;
                TxtText.Text = Qdel.Description;
                TxtPrice.Text = Qdel.Price.ToString();

            }

            else if (e.CommandName == "cmd_del")
            {
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);


                DataClasses1DataContext db = new DataClasses1DataContext();
                var Qdel = db.tbl_Posts.Where(c => c.Id == del1).SingleOrDefault();

                db.tbl_Posts.DeleteOnSubmit(Qdel);
                db.SubmitChanges();
                GridView1.DataBind();

            }
        }
    }
}