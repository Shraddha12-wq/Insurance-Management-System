using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Car_Insurance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string carMake = txtCarMake.Text.Trim();
        string carModel = txtCarModel.Text.Trim();
        int carYear = int.Parse(txtCarYear.Text.Trim()); // Add proper error handling for non-integer input
        string ownerName = txtOwnerName.Text.Trim();
        string ownerEmail = txtOwnerEmail.Text.Trim();
        string ownerPhone = txtOwnerPhone.Text.Trim();
        string coverage = txtCoverage.Text.Trim();

        // Validate the form
        if (Page.IsValid)
        {
            // Process form data (e.g., save to database or send an email)

            // Show success message
            Response.Write("<script>alert('Thank you for your application! We will contact you soon.');</script>");

            // Clear the form after submission
            ClearForm();

            // Optionally hide the error message if everything is successful
            lblMessage.Visible = false;
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
        txtCarMake.Text = string.Empty;
        txtCarModel.Text = string.Empty;
        txtCarYear.Text = string.Empty;
        txtOwnerName.Text = string.Empty;
        txtOwnerEmail.Text = string.Empty;
        txtOwnerPhone.Text = string.Empty;
        txtCoverage.Text = string.Empty;
        txtCardNumber.Text = string.Empty;
        txtCardExpiry.Text = string.Empty;
        txtCardCVV.Text = string.Empty;
        txtCardHolderName.Text = string.Empty;

        // Optionally reset dropdowns and other form elements
    }
    }
