<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style>
.content {
    padding: 20px;
    margin: 0 auto;
    max-width: 800px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}


h2 {
    color: #333;
    font-size: 28px;
    margin-bottom: 10px;
}

p {
    color: #666;
    font-size: 16px;
    margin-bottom: 20px;
}

.inputField {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 14px;
}


#txtFeedback {
    height: 150px;
}


.btnSubmit {
    background-color: #3498db;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
    width: 100%;
}

.btnSubmit:hover {
    background-color: #2980b9;
}


label {
    font-size: 16px;
    font-weight: bold;
    color: #333;
}


span {
    color: red;
    font-size: 12px;
}


.footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}


</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="content">
        <h2>We Value Your Feedback</h2>
        <p>Please fill out the form below to share your thoughts with us:</p>

        
        <asp:Label ID="Label1" runat="server" Text="Your Name:" AssociatedControlID="txtName"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name" class="inputField"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvName" 
            runat="server" 
            ControlToValidate="txtName" 
            InitialValue="Enter your name" 
            ErrorMessage="Name is required." 
            ForeColor="Red" 
            Display="Dynamic" />
        
        <br /><br />

        
        <asp:Label ID="Label2" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" class="inputField"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvEmail" 
            runat="server" 
            ControlToValidate="txtEmail" 
            InitialValue="Enter your email" 
            ErrorMessage="Email is required." 
            ForeColor="Red" 
            Display="Dynamic" />
        <asp:RegularExpressionValidator 
            ID="revEmail" 
            runat="server" 
            ControlToValidate="txtEmail" 
            ValidationExpression="^[^@]+@[^@]+\.[^@]+$" 
            ErrorMessage="Please enter a valid email address." 
            ForeColor="Red" 
            Display="Dynamic" />

        <br /><br />

        
        <asp:Label ID="Label3" runat="server" Text="Feedback:" AssociatedControlID="txtFeedback"></asp:Label>
        <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" placeholder="Write your feedback here" class="inputField"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="rfvFeedback" 
            runat="server" 
            ControlToValidate="txtFeedback" 
            InitialValue="Write your feedback here" 
            ErrorMessage="Feedback is required." 
            ForeColor="Red" 
            Display="Dynamic" />

        <br /><br />

        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" OnClick="btnSubmit_Click" CssClass="btnSubmit" />

    </div>
    
    

</asp:content>


