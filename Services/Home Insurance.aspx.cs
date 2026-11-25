using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Home_Insurance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            {
                // Collect the form data
                string fullName = txtName.Text;
                int age = Convert.ToInt32(txtAge.Text);
                decimal propertyValue = Convert.ToDecimal(txtPropertyValue.Text);
                string location = txtLocation.Text;
                string phoneNumber = txtPhone.Text;
                string email = txtEmail.Text;

               
            }
            else
            {
                // Display an error message if the form is not valid
                lblConfirmationMessage.Text = "Please correct the errors and try again.";
                lblConfirmationMessage.Visible = true;
            }
    }
}