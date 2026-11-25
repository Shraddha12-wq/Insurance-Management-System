using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EXCEELLENT_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

            string userName = txtName.Text;
            string userEmail = txtEmail.Text;
            string userFeedback = txtFeedback.Text;

            
            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(userEmail) || string.IsNullOrEmpty(userFeedback))
            {
                
                Response.Write("<script>alert('Please fill in all fields.');</script>");
            }
            else
            {
                
                Response.Write("<script>alert('Thank you for your feedback!');</script>");
            }

           
            txtName.Text = "";
            txtEmail.Text = "";
            txtFeedback.Text = "";
        }
    }
    
