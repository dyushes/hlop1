using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HloP
{
    enum State
    {
        Insert,
        Update,
        Select
    };

    public partial class WebForm1 : System.Web.UI.Page
    {
        private static State st = State.Select;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button4.Enabled = false;
            Button5.Enabled = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            st = State.Insert;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Button4.Enabled = true;
            Button5.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            st = State.Update;
            int si = GridView1.SelectedIndex;
            if(si<0)
                return;
            DropDownList1.Text = GridView1.Rows[si].Cells[2].Text;
            TextBox1.Text = GridView1.Rows[si].Cells[3].Text;
            TextBox2.Text = GridView1.Rows[si].Cells[4].Text;
            TextBox3.Text = GridView1.Rows[si].Cells[1].Text;
            Button4.Enabled = true;
            Button5.Enabled = true;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            int si = GridView1.SelectedIndex;
            if(si<0) return;
            TextBox3.Text = GridView1.Rows[si].Cells[1].Text;
            SqlDataSource1.Delete();
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (st == State.Insert) SqlDataSource1.Insert();
            if (st == State.Update) SqlDataSource1.Update();
            st = State.Select;
            Button4.Enabled = false;
            Button5.Enabled = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            st = State.Select;
            Button4.Enabled = false;
            Button5.Enabled = false;
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }
    }
}