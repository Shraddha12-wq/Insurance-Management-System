<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style>
/* General body styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Header Styling */
h2 {
    font-size: 28px;
    color: #333;
    margin-bottom: 20px;
    text-align: center;
}

/* Form Container */
.form-container {
    background-color: white;
    padding: 30px;
    margin: 20px auto;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 80%;
    max-width: 800px;
}

/* Input fields */
.inputField {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
}

/* Form labels */
label {
    font-size: 16px;
    color: #333;
    display: block;
    margin-bottom: 5px;
}

/* Required field error message */
span {
    color: red;
    font-size: 12px;
}

/* Submit button */
.btnSubmit {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    width: 100%;
    cursor: pointer;
    margin-top: 15px;
}

.btnSubmit:hover {
    background-color: #45a049;
}

/* Validation summary */
ul {
    color: red;
    padding-left: 20px;
}

ul li {
    font-size: 14px;
}

/* Responsive Design */
@media screen and (max-width: 768px) {
    .form-container {
        width: 90%;
        padding: 15px;
    }

    h2 {
        font-size: 24px;
    }
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>Insurance Enquiry Form</h2>
    <p>Please fill out the form below to make an enquiry about our insurance services:</p>

    <asp:Panel ID="pnlEnquiryForm" runat="server" CssClass="form-container">
        <!-- Name Input -->
        <asp:Label ID="lblName" runat="server" Text="Full Name:" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" CssClass="inputField" placeholder="Enter your full name" />
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" InitialValue="" ErrorMessage="Name is required" ForeColor="Red" />
        <br /><br />

        <!-- Email Input -->
        <asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail" />
        <asp:TextBox ID="txtEmail" runat="server" CssClass="inputField" placeholder="Enter your email" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" InitialValue="" ErrorMessage="Email is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ErrorMessage="Invalid email format" ForeColor="Red" />
        <br /><br />

        <!-- Phone Input -->
        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" AssociatedControlID="txtPhone" />
        <asp:TextBox ID="txtPhone" runat="server" CssClass="inputField" placeholder="Enter your phone number" />
        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" InitialValue="" ErrorMessage="Phone number is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^\d{10}$" ErrorMessage="Phone number must be 10 digits" ForeColor="Red" />
        <br /><br />

        <!-- Message Input -->
        <asp:Label ID="lblMessage" runat="server" Text="Your Enquiry:" AssociatedControlID="txtMessage" />
        <asp:TextBox ID="txtMessage" runat="server" CssClass="inputField" TextMode="MultiLine" placeholder="Enter your enquiry here" />
        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" InitialValue="" ErrorMessage="Message is required" ForeColor="Red" />
        <br /><br />

        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Enquiry" OnClick="btnSubmit_Click" CssClass="btnSubmit" />
    </asp:Panel>

    <!-- Optional: Display Validation Summary -->
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="BulletList" />

    <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" />
    <asp:Label ID="lblError" runat="server" ForeColor="Red" />
</asp:Content>

