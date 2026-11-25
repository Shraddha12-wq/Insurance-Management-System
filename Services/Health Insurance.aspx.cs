using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Health_Insurance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text.Trim();
        string age = txtAge.Text.Trim();
        string coverage = ddlCoverage.SelectedValue;
        string phone = txtPhone.Text.Trim();
        string email = txtEmail.Text.Trim();
        bool hasMedicalHistory = chkMedicalHistory.Checked;
        string cardNumber = txtCardNumber.Text.Trim();
        string cardExpiry = txtCardExpiry.Text.Trim();
        string cardCVV = txtCardCVV.Text.Trim();
        string cardHolderName = txtCardHolderName.Text.Trim();

        // Validate the form
        if (Page.IsValid)
        {
            // Process the form data (e.g., save to database or send email)

            // Show success message (optional)
            Response.Write("<script>alert('Thank you for your application! We will contact you soon.');</script>");

            // Clear the form fields after successful submission
            ClearForm();

            // Optionally, hide the error message if everything is successful
            lblMessage.Visible = false; // Make sure the error message is hidden
        }
        else
        {
            // If validation fails, show an error message
            lblMessage.Text = "Please correct the errors and try again.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Visible = true; // Make sure the error message is visible
        }
    }

    private void ClearForm()
    {
        // Reset all textboxes to empty
        txtName.Text = string.Empty;
        txtAge.Text = string.Empty;
        ddlCoverage.SelectedIndex = 0; // Reset dropdown list to default "Select Coverage Type"
        txtPhone.Text = string.Empty;
        txtEmail.Text = string.Empty;
        chkMedicalHistory.Checked = false; // Uncheck checkbox for medical history
        txtCardNumber.Text = string.Empty;
        txtCardExpiry.Text = string.Empty;
        txtCardCVV.Text = string.Empty;
        txtCardHolderName.Text = string.Empty;
    }
}