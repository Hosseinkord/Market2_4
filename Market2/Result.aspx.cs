using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Market2
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PayLine GetPayline = new PayLine();
            string trans_id = Request.Form["trans_id"];
            string id_get = Request.Form["id_get"];
            //************Api Last ("Api Key")*******//
            //GetPayline.Get(url,"Your-API", trans_id, id_get)
            string result = GetPayline.Get("http://payline.ir/payment/gateway-result-second", "api", trans_id, id_get);

            if(result=="1")
            {
                var Id = Session["Id"];
                DataClasses1DataContext db = new DataClasses1DataContext();
                var q = db.tbl_Pays.Where(c => (c.Id == int.Parse(Id.ToString())) && (c.Ip == GetIPAddress())).SingleOrDefault();
                db.PUpdatePay(q.Id, trans_id);
                db.SubmitChanges();

                LblResult.Text = "Pay Is DOne :)";
                LblTransActionId.Text = trans_id;
            }
            else
            {
                LblResult.Text = "Pay Is  Not Done :(";
                LblTransActionId.Text = "Pay Is  Not Done :(";
            }

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
    }
}