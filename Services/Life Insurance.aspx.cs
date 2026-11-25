using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Life_Insurance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        int age = int.Parse(txtAge.Text.Trim());
        string coverage = txtCoverage.Text.Trim();
        string phone = txtPhone.Text.Trim();
        string email = txtEmail.Text.Trim();

        // Validate the form
        if (Page.IsValid)
        {
            // Process form submission (e.g., save to database, send email, etc.)

            // Display success message using JavaScript
            Response.Write("<script>alert('Thank you for your application! We will contact you soon.');</script>");

            // Clear the form after submission
            ClearForm();
        }
        else
        {
            // If validation fails, display an error message
            lblMessage.Text = "Please correct the errors and try again.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }

    private void ClearForm()
    {
        // Reset all textboxes to empty
        txtName.Text = string.Empty;
        txtAge.Text = string.Empty;
        txtCoverage.Text = string.Empty;
        txtPhone.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtStreet.Text = string.Empty;
        txtCity.Text = string.Empty;
        txtState.Text = string.Empty;
        txtZip.Text = string.Empty;
        txtCardNumber.Text = string.Empty;
        txtCardExpiry.Text = string.Empty;
        txtCardCVV.Text = string.Empty;
        txtCardHolderName.Text = string.Empty;

        // Reset dropdowns
        ddlMaritalStatus.SelectedIndex = 0; // Or set to any default value
    }
}
