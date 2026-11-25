<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mobile Insurance.aspx.cs" Inherits="Services_Mobile_Insurance" %>

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

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .inputField {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .btnSubmit {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        .btnSubmit:hover {
            background-color: #0056b3;
        }

        .errorMessage {
            color: red;
            font-size: 12px;
        }

        .form-group {
            margin-bottom: 20px;
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
        
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="form-container">
        <h2>Mobile Insurance Application Form</h2>
        <p>Please fill out the form below to apply for mobile insurance.</p>

        <!-- Full Name -->
        <asp:Label ID="lblName" runat="server" Text="Full Name:" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" InitialValue="" ErrorMessage="Name is required" ForeColor="Red" />
        <br />

        <!-- Mobile Model -->
        <asp:Label ID="lblMobileModel" runat="server" Text="Mobile Model:" AssociatedControlID="txtMobileModel" />
        <asp:TextBox ID="txtMobileModel" runat="server" placeholder="Enter your mobile model" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvMobileModel" runat="server" ControlToValidate="txtMobileModel" InitialValue="" ErrorMessage="Mobile model is required" ForeColor="Red" />
        <br />

        <!-- Mobile Number -->
        <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number:" AssociatedControlID="txtMobileNumber" />
        <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Enter your mobile number" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" ControlToValidate="txtMobileNumber" InitialValue="" ErrorMessage="Mobile number is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revMobileNumber" runat="server" ControlToValidate="txtMobileNumber" ValidationExpression="^\d{10}$" ErrorMessage="Mobile number must be 10 digits" ForeColor="Red" />
        <br />

        <!-- Email Address -->
        <asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail" />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" InitialValue="" ErrorMessage="Email is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ErrorMessage="Invalid email format" ForeColor="Red" />
        <br />

        <!-- Insurance Type Dropdown -->
        <asp:Label ID="lblInsuranceType" runat="server" Text="Insurance Type:" AssociatedControlID="ddlInsuranceType" />
        <asp:DropDownList ID="ddlInsuranceType" runat="server" class="inputField">
            <asp:ListItem Text="Select Insurance Type" Value="" />
            <asp:ListItem Text="Basic" Value="Basic" />
            <asp:ListItem Text="Premium" Value="Premium" />
            <asp:ListItem Text="VIP" Value="VIP" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvInsuranceType" runat="server" ControlToValidate="ddlInsuranceType" InitialValue="" ErrorMessage="Insurance type is required" ForeColor="Red" />
        <br />

        <!-- Mobile Insurance Plan -->
        <asp:Label ID="lblInsurancePlan" runat="server" Text="Select Mobile Insurance Plan:" AssociatedControlID="ddlInsurancePlan" />
        <asp:DropDownList ID="ddlInsurancePlan" runat="server" class="inputField">
            <asp:ListItem Text="Select Plan" Value="" />
            <asp:ListItem Text="Basic Plan" Value="BasicPlan" />
            <asp:ListItem Text="Premium Plan" Value="PremiumPlan" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvInsurancePlan" runat="server" ControlToValidate="ddlInsurancePlan" InitialValue="" ErrorMessage="Insurance plan is required" ForeColor="Red" />
        <br />
          <!-- Payment Method Section -->
    <div class="payment-section">
        <h3>Payment Method</h3>
        
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

        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" CssClass="btnSubmit" />
    </div>
</asp:Content>

