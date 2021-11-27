using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //******************For TitleHeader***********************
            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Options.Where(c => c.ID == 1).SingleOrDefault();
            this.Title = q.Title + "|" + "Sittings";

            if (!IsPostBack)
            {
                TxtTitle.Text = q.Title;
                TxtFooter.Text = q.Footer;
                TxtAboutus.Text = q.Aboutus;
                TxtTel1.Text = q.Tel1;
                TxtTel2.Text = q.Tel2;
                TxtEmail.Text = q.Email;
                TxtContactus.Text = q.Contactus;
                TxtAddress.Text = q.Address;
            }
            }

        protected void BtnRelease_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PUpdateOptions(1,TxtTitle.Text, TxtFooter.Text, TxtAboutus.Text, TxtTel1.Text, TxtTel2.Text, TxtEmail.Text, TxtContactus.Text, TxtAddress.Text);
            db.SubmitChanges();
        }
    }
}