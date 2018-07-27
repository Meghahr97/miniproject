using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorInformation
{
    public partial class visitorinfo : System.Web.UI.Page
    {
        VisitorInformationEntities db = new VisitorInformationEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtvehicle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
           
            
                string firstname = txtfname.Text;
                string lastname = txtlname.Text;
                string company = txtcompany.Text;
                string visiting = txtvisiting.Text;
                string idtype = ddlid.SelectedItem.Value.ToString();
                string visitorId = txtid.Text;
                string vehicle = txtvehicle.Text.ToString();
                string cotactnum = Txtcontact.Text.ToString();
                string visit = txtpurpose.Text.ToString();
            string status = "Signed in";
            DateTime checked_in = DateTime.Now;
            DateTime checked_out = DateTime.Now;




           
                visitor vi = new visitor();
            vi.checked_in = checked_in;
            vi.checked_out = checked_out;

                vi.firstname = firstname;
                vi.lastname = lastname;
                vi.company = company;
                vi.visiting = visiting;
                vi.idtype = idtype;
                vi.visitorId = visitorId;
                vi.vehicle = vehicle;
                vi.contactnum = cotactnum;
            vi.visit = visit;
            vi.status = status;
            db.visitors.Add(vi);

            var res = db.SaveChanges();
            if(res > 0)
            {
                Response.Write(vi.Id);
            }

            




        }

        protected void Btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("visitorinfo.aspx");
        }
    }
}