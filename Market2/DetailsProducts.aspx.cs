using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Market2
{
    public partial class DetailsProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["Id"];

            DataClasses1DataContext db = new DataClasses1DataContext();
            var q = db.tbl_Posts.Where(c => c.Id == int.Parse(Id)).SingleOrDefault();
            var q1 = db.tbl_Posts.Where(c => c.Id == int.Parse(Id));

            LblTitle.Text = q.Title;
            LblPrice.Text = q.Price.ToString();


            ListView1.DataSource = q1;
            ListView1.DataBind();


        }

        protected void BtnAddBasket_Click(object sender, EventArgs e)
        {
            if (Session["Basket"] == null)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("Id");
                dt.Columns.Add("Title");
                dt.Columns.Add("Price");

                DataRow dr = dt.Rows.Add();
                dr["Id"] = Request.QueryString["Id"];

                dr["Title"] = LblTitle.Text;
                dr["Price"] = LblPrice.Text;

                Session["Basket"] = dt;
            }
            else
            {
                DataTable dt = (DataTable)Session["Basket"];

                DataRow dr = dt.Rows.Add();
                dr["Id"] = Request.QueryString["Id"];

                dr["Title"] = LblTitle.Text;
                dr["Price"] = LblPrice.Text;

                Session["Basket"] = dt;

            }
            Alert.Show("The Product Added TO Basket!! :)");
        }


        protected void BtnBasket_Click1(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(VBasket);
            Repeater1.DataSource = (DataTable)Session["Basket"];
            Repeater1.DataBind();
            LblPriceFinally.Text = CalculatePriceFinally();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string Id = e.CommandArgument.ToString();
            DataRow rw = null;
            DataTable dtBasket = (DataTable)Session["Basket"];
            foreach (DataRow row in dtBasket.Rows)
            {
                if (row["Id"].ToString() == Id)
                {
                    rw = row;
                    break;
                }
            }
            dtBasket.Rows.Remove(rw);
            Session["Basket"] = dtBasket;
            Repeater1.DataSource = dtBasket;
            Repeater1.DataBind();
        }

        protected void BtnPayment_Click(object sender, EventArgs e)
        {
            DataClasses1DataContext db = new DataClasses1DataContext();
            db.PInsertPay(TxtNameAndFamily.Text, TxtEmail.Text, TxtTel.Text, TxtPostCode.Text, TxtAddress.Text, project.classes.Funcs.Miladi2Shamsi(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 1), "0", GetIPAddress());
            db.SubmitChanges();

            var Id = (from q in db.tbl_Pays select q.Id).Max();

            DataTable dt = (DataTable)Session["Basket"];
            for (int i = 0; dt.Rows.Count > i; i++)
            {
                db.PInsertBasket(Id.ToString(), dt.Rows[i].ItemArray.GetValue(1).ToString(), int.Parse(dt.Rows[i].ItemArray.GetValue(2).ToString()));
                db.SubmitChanges();
            }
            Alert.Show("Pay Is Done :)");
            //************api From Bank ("API Key")**************//
            //***********http://NameOfSite.ir/Result.aspx after the Encode Repalce in ("Redirect Page")************//
          //  Session.Add("Id", Id.ToString());

            //PayLine PayLine = new PayLine();
            //double Price = Convert.ToDouble(LblPriceFinally.Text);
            //string result = PayLine.Send("http://payline.ir/payment/gateway-send", "api", Price, "redirect page");

            //
           // if (int.Parse(result) > 0)
            //{
              //  Response.Redirect("http://payline.ir/payment/gateway-" + result);
            //}
        }

        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
        private string CalculatePriceFinally()
        {
            try
            {
                int counter = 0;
                DataTable dt = (DataTable)Session["Basket"];
                foreach (DataRow dr in dt.Rows)
                {
                    counter += Convert.ToInt32(dr["Price"]);
                }
                return counter.ToString();
            }
            catch { return "0"; }
        }


    }
}