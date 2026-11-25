using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services_Mobile_Insurance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         // Example: Capture form values
            string name = txtName.Text;
            string mobileModel = txtMobileModel.Text;
            string mobileNumber = txtMobileNumber.Text;
            string email = txtEmail.Text;
            string insuranceType = ddlInsuranceType.SelectedValue;
            string insurancePlan = ddlInsurancePlan.SelectedValue;

            
    }
}