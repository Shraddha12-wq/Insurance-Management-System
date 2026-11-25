<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Car Insurance.aspx.cs" Inherits="Services_Car_Insurance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style>
    .form-container {
        padding: 20px;
        margin: 3px auto;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 90%;
    }

    .content {
        padding: 15px;
        margin: 20px auto;
        background-color: white;
        max-width: 700px;
        border-radius: 8px;
       
    }

    /* Form Styling */
    h2 {
        font-size: 29px;
        margin-bottom: 10px;
    }

    .inputField {
        width: 100%;
        padding: 8px;
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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="form-container">

    <h2>Car Insurance Application Form</h2>
    <p>Fill out the form below to apply for car insurance:</p>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label><br /><br />
    <!-- Car Details Section -->
    <asp:Label ID="lblCarMake" runat="server" Text="Car Make:" AssociatedControlID="txtCarMake" />
    <asp:TextBox ID="txtCarMake" runat="server" placeholder="Enter car make" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvCarMake" runat="server" ControlToValidate="txtCarMake" InitialValue="" ErrorMessage="Car make is required" ForeColor="Red" />
    <br /><br />

    <asp:Label ID="lblCarModel" runat="server" Text="Car Model:" AssociatedControlID="txtCarModel" />
    <asp:TextBox ID="txtCarModel" runat="server" placeholder="Enter car model" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvCarModel" runat="server" ControlToValidate="txtCarModel" InitialValue="" ErrorMessage="Car model is required" ForeColor="Red" />
    <br /><br />

    <asp:Label ID="lblCarYear" runat="server" Text="Car Year:" AssociatedControlID="txtCarYear" />
    <asp:TextBox ID="txtCarYear" runat="server" placeholder="Enter car year" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvCarYear" runat="server" ControlToValidate="txtCarYear" InitialValue="" ErrorMessage="Car year is required" ForeColor="Red" />
    <asp:RangeValidator ID="rvCarYear" runat="server" ControlToValidate="txtCarYear" MinimumValue="1900" MaximumValue="2025" Type="Integer" ErrorMessage="Please enter a valid car year (1900 - 2025)" ForeColor="Red" />
    <br /><br />

    <!-- Owner Details Section -->
    <asp:Label ID="lblOwnerName" runat="server" Text="Owner's Name:" AssociatedControlID="txtOwnerName" />
    <asp:TextBox ID="txtOwnerName" runat="server" placeholder="Enter owner's name" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvOwnerName" runat="server" ControlToValidate="txtOwnerName" InitialValue="" ErrorMessage="Owner's name is required" ForeColor="Red" />
    <br /><br />

    <asp:Label ID="lblOwnerEmail" runat="server" Text="Owner's Email:" AssociatedControlID="txtOwnerEmail" />
    <asp:TextBox ID="txtOwnerEmail" runat="server" placeholder="Enter owner's email" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvOwnerEmail" runat="server" ControlToValidate="txtOwnerEmail" InitialValue="" ErrorMessage="Email is required" ForeColor="Red" />
    <asp:RegularExpressionValidator ID="revOwnerEmail" runat="server" ControlToValidate="txtOwnerEmail" ValidationExpression="^[^@]+@[^@]+\.[^@]+$" ErrorMessage="Invalid email format" ForeColor="Red" />
    <br /><br />

    <asp:Label ID="lblOwnerPhone" runat="server" Text="Phone Number:" AssociatedControlID="txtOwnerPhone" />
    <asp:TextBox ID="txtOwnerPhone" runat="server" placeholder="Enter phone number" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvOwnerPhone" runat="server" ControlToValidate="txtOwnerPhone" InitialValue="" ErrorMessage="Phone number is required" ForeColor="Red" />
    <asp:RegularExpressionValidator ID="revOwnerPhone" runat="server" ControlToValidate="txtOwnerPhone" ValidationExpression="^\d{10}$" ErrorMessage="Phone number must be 10 digits" ForeColor="Red" />
    <br /><br />

    <!-- Coverage Section -->
    <asp:Label ID="lblCoverage" runat="server" Text="Coverage Amount:" AssociatedControlID="txtCoverage" />
    <asp:TextBox ID="txtCoverage" runat="server" placeholder="Enter coverage amount" class="inputField" />
    <asp:RequiredFieldValidator ID="rfvCoverage" runat="server" ControlToValidate="txtCoverage" InitialValue="" ErrorMessage="Coverage amount is required" ForeColor="Red" />
    <br /><br />

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

