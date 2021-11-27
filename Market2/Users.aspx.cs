using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //******************For TitleHeader**********************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Users";
        }


        protected void BtnRegister_Click1(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PInsertUsers(TxtUserName.Text, TxtPassword.Text, TxtEmail.Text, TxtNickName.Text, TxtRole.SelectedIndex);
            db.SubmitChanges();
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_del")
            {
                int del = int.Parse(e.CommandArgument.ToString());
                int del1 = int.Parse(GridView1.Rows[del].Cells[0].Text);

                DataClasses1DataContext db = new DataClasses1DataContext();
                var q = db.tbl_Users.Where(c => c.Id == del1).SingleOrDefault();

                db.tbl_Users.DeleteOnSubmit(q);
                db.SubmitChanges();
                GridView1.DataBind();
            }
        }
    }
}