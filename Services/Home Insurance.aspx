<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home Insurance.aspx.cs" Inherits="Services_Home_Insurance" %>

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
        <h2>Home Insurance Application Form</h2>
        <p>Please fill out the form below to apply for home insurance.</p>

        <asp:Label ID="lblName" runat="server" Text="Full Name:" AssociatedControlID="txtName" />
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" InitialValue="" ErrorMessage="Name is required" ForeColor="Red" />
        <br />

        <asp:Label ID="lblAge" runat="server" Text="Age:" AssociatedControlID="txtAge" />
        <asp:TextBox ID="txtAge" runat="server" placeholder="Enter your age" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" InitialValue="" ErrorMessage="Age is required" ForeColor="Red" />
        <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" MinimumValue="18" MaximumValue="100" Type="Integer" ErrorMessage="Age must be between 18 and 100" ForeColor="Red" />
        <br />

        <asp:Label ID="lblPropertyValue" runat="server" Text="Property Value:" AssociatedControlID="txtPropertyValue" />
        <asp:TextBox ID="txtPropertyValue" runat="server" placeholder="Enter your property value" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvPropertyValue" runat="server" ControlToValidate="txtPropertyValue" InitialValue="" ErrorMessage="Property value is required" ForeColor="Red" />
        <br />

        <asp:Label ID="lblLocation" runat="server" Text="Property Location:" AssociatedControlID="txtLocation" />
        <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter property location" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation" InitialValue="" ErrorMessage="Location is required" ForeColor="Red" />
        <br />

        <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" AssociatedControlID="txtPhone" />
        <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter your phone number" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" InitialValue="" ErrorMessage="Phone number is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^\d{10}$" ErrorMessage="Phone number must be 10 digits" ForeColor="Red" />
        <br />

        <asp:Label ID="lblEmail" runat="server" Text="Email Address:" AssociatedControlID="txtEmail" />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" class="inputField" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" InitialValue="" ErrorMessage="Email is required" ForeColor="Red" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ErrorMessage="Invalid email format" ForeColor="Red" />
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

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" CssClass="btnSubmit" />

        
        <!-- Confirmation message -->
        <asp:Label ID="lblConfirmationMessage" runat="server" Visible="false" ForeColor="Green" />
    </div>
</asp:Content>

