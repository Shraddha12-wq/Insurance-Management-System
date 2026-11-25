using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Registration : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string message = txtMessage.Text;




        }
        else
        {

        }
    }
}
