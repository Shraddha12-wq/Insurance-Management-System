<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Life Insurance.aspx.cs" Inherits="Services_Life_Insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style>
    
     .form-container {
        padding: 20px;
        margin: 20px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 90%;
    }

    .content {
        padding: 20px;
        margin: 20px auto;
        background-color: white;
        max-width: 800px;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    /* Form Styling */
    h2 {
        font-size: 28px;
        margin-bottom: 20px;
    }

    .inputField {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .btnSubmit {
        background-color: #28a745;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    .btnSubmit:hover {
        background-color: #218838;
    }

    /* Error Message Styling */
    span {
        color: red;
        font-size: 12px;
    }

    /* New Payment Method Styling */
    .payment-section {
        padding-top: 20px;
        padding-bottom: 20px;
        border-top: 2px solid #ccc;
        margin-top: 10px;
    }

    .payment-method-label {
        font-weight: bold;
        margin-top: 10px;
    }

    .payment-input {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    /* New Address Section Styling */
    .address-section {
        padding-top: 20px;
        padding-bottom: 20px;
        border-top: 2px solid #ccc;
        margin-top: 10px;
    }

    .address-input {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .dropdown-input {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="form-container">
<h2>Life Insurance Application Form</h2>
    <p>Fill out the form below to apply for life insurance with us:</p>
     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Visible="false" />
     <br />

    <!-- Full Name -->
    <asp:Label ID="lblName" runat="server" Text="Full Name:" AssociatedControlID="txtName" />
    <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" InitialValue="" ErrorMessage="Name is required" ForeColor="Red" />
    <br /><br />

    <!-- Age -->
    <asp:Label ID="lblAge" runat="server" Text="Age:" AssociatedControlID="txtAge" />
    <asp:TextBox ID="txtAge" runat="server" placeholder="Enter your age" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" InitialValue="" ErrorMessage="Age is required" ForeColor="Red" />
    <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="100" Type="Integer" ErrorMessage="Age must be between 18 and 100" ForeColor="Red" />
    <br /><br />

    <!-- Coverage Amount -->
    <asp:Label ID="lblCoverage" runat="server" Text="Coverage Amount:" AssociatedControlID="txtCoverage" />
    <asp:TextBox ID="txtCoverage" runat="server" placeholder="Enter the coverage amount" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvCoverage" runat="server" ControlToValidate="txtCoverage" InitialValue="" ErrorMessage="Coverage amount is required" ForeColor="Red" />
    <br /><br />

    <!-- Phone Number -->
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" AssociatedControlID="txtPhone" />
    <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter your phone number" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" InitialValue="" ErrorMessage="Phone number is required" ForeColor="Red" />
    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^\d{10}$" ErrorMessage="Phone number must be 10 digits" ForeColor="Red" />
    <br /><br />

    <!-- Email Address -->
    <asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail" />
    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" InitialValue="" ErrorMessage="Email is required" ForeColor="Red" />
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ErrorMessage="Invalid email format" ForeColor="Red" />
    <br /><br />

    <!-- Address Section -->
    <div class="address-section">
        <h2>Address Details</h2>
        
        <asp:Label ID="lblStreet" runat="server" Text="Street Address:" AssociatedControlID="txtStreet" />
        <asp:TextBox ID="txtStreet" runat="server" placeholder="Enter street address" class="address-input" />
        <asp:RequiredFieldValidator ID="rfvStreet" runat="server" ControlToValidate="txtStreet" InitialValue="" ErrorMessage="Street address is required" ForeColor="Red" />
        <br /><br />

        <asp:Label ID="lblCity" runat="server" Text="City:" AssociatedControlID="txtCity" />
        <asp:TextBox ID="txtCity" runat="server" placeholder="Enter city" class="address-input" />
        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" InitialValue="" ErrorMessage="City is required" ForeColor="Red" />
        <br /><br />

        <asp:Label ID="lblState" runat="server" Text="State:" AssociatedControlID="txtState" />
        <asp:TextBox ID="txtState" runat="server" placeholder="Enter state" class="address-input" />
        <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState" InitialValue="" ErrorMessage="State is required" ForeColor="Red" />
        <br /><br />

        <asp:Label ID="lblZip" runat="server" Text="Zip Code:" AssociatedControlID="txtZip" />
        <asp:TextBox ID="txtZip" runat="server" placeholder="Enter zip code" class="address-input" />
        <asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="txtZip" InitialValue="" ErrorMessage="Zip code is required" ForeColor="Red" />
        <br /><br />
    </div>

    <!-- Marital Status -->
    <asp:Label ID="lblMaritalStatus" runat="server" Text="Marital Status:" AssociatedControlID="ddlMaritalStatus" />
    <asp:DropDownList ID="ddlMaritalStatus" runat="server" class="dropdown-input">
        <asp:ListItem Text="Select" Value="" />
        <asp:ListItem Text="Single" Value="Single" />
        <asp:ListItem Text="Married" Value="Married" />
        <asp:ListItem Text="Divorced" Value="Divorced" />
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvMaritalStatus" runat="server" ControlToValidate="ddlMaritalStatus" InitialValue="" ErrorMessage="Marital status is required" ForeColor="Red" />
    <br /><br />

   
   <!-- Payment Method Section -->
    <div class="payment-section">
        <h2>Payment Method</h2>
        <br /><br />
        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number:" AssociatedControlID="txtCardNumber" class="payment-method-label" />
        <asp:TextBox ID="txtCardNumber" runat="server" placeholder="Enter your card number" class="payment-input" />
        <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" InitialValue="" ErrorMessage="Card number is required" ForeColor="Red" />
        <br /><br />
        
        <asp:Label ID="lblCardExpiry" runat="server" Text="Card Expiry Date (MM/YY):" AssociatedControlID="txtCardExpiry" class="payment-method-label" />
        <asp:TextBox ID="txtCardExpiry" runat="server" placeholder="Enter expiry date" class="payment-input" />
        <asp:RequiredFieldValidator ID="rfvCardExpiry" runat="server" ControlToValidate="txtCardExpiry" InitialValue="" ErrorMessage="Expiry date is required" ForeColor="Red" />
        <br /><br />
        
        <asp:Label ID="lblCardCVV" runat="server" Text="Card CVV:" AssociatedControlID="txtCardCVV" class="payment-method-label" />
        <asp:TextBox ID="txtCardCVV" runat="server" placeholder="Enter CVV" class="payment-input" />
        <asp:RequiredFieldValidator ID="rfvCardCVV" runat="server" ControlToValidate="txtCardCVV" InitialValue="" ErrorMessage="CVV is required" ForeColor="Red" />
        <br /><br />
        
        <asp:Label ID="lblCardHolderName" runat="server" Text="Cardholder's Name:" AssociatedControlID="txtCardHolderName" class="payment-method-label" />
        <asp:TextBox ID="txtCardHolderName" runat="server" placeholder="Enter cardholder's name" class="payment-input" />
        <asp:RequiredFieldValidator ID="rfvCardHolderName" runat="server" ControlToValidate="txtCardHolderName" InitialValue="" ErrorMessage="Cardholder's name is required" ForeColor="Red" />
        <br /><br />
    </div>

    <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" CssClass="btnSubmit" />
</div>
</asp:Content>

