using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorInformation
{
    public partial class outform : System.Web.UI.Page
    {
        VisitorInformationEntities db = new VisitorInformationEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = (from t in db.visitors
                            where t.status == "signed in"
                            select new { id = t.Id, firstname = t.firstname, lastname = t.lastname, typeid = t.idtype, idnum = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }


        }
        protected void be_Click(object sender, EventArgs e)
        {
            Button be = (Button)sender;
            GridViewRow r = (GridViewRow)be.NamingContainer;
            int id = int.Parse(r.Cells[1].Text);
            var olddata = (from t in db.visitors where t.Id == id && t.status == "signed in" select t).SingleOrDefault();
            olddata.status = "signed out";
            olddata.checked_out = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("status updated");
            GridView1.DataBind();
        }

        protected void btnsrchid_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(txtbyid.Text))
            {
                int id = int.Parse(txtbyid.Text);
                var data = (from t in db.visitors
                            where t.Id == id && t.status == "signed in"
                            select new { Id = t.Id, firstname = t.firstname, lastname = t.lastname, typeid = t.idtype, idnum = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
            else
            {
                var data = (from t in db.visitors
                            where t.status == "signed in"
                            select new { id = t.Id, firstname = t.firstname, lastname = t.lastname, typeid = t.idtype, idnum = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

        protected void btnsrchname_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtbyid.Text))
            {
                string name = txtbyid.Text;
                var data = (from t in db.visitors
                            where t.firstname == name && t.status == "signed in"
                            select new {Id=t.Id, firstname = t.firstname, lastname = t.lastname, typeid = t.idtype, idnum = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();

            }
            else
            {
                var data = (from t in db.visitors
                            where t.status == "signed in"
                            select new { id = t.Id, firstname = t.firstname, lastname = t.lastname, typeid = t.idtype, idnum = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

        }
    }
}