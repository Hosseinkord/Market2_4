using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //*****************For TitleHeader***********************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Contact Us";


            var q1 = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.LblContactUs.Text = q1.Contactus;
        }


        protected void Send_Click1(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PInsertComments(null, TxtName.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), TxtEmail.Text, TxtMessage.Text, TxtTitle.Text, null);
            db.SubmitChanges();
        }
    }
}