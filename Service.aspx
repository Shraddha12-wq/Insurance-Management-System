<%@ Page Title="Service" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style>
.service-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 20px;
    padding: 20px;
    text-align: center;
}

/* Individual service item styling */
.service-item {
    background-color: #f8f8f8;
    border-radius: 8px;
    padding: 15px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
}

.service-item:hover {
    transform: translateY(-10px);
    box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
}

/* Service image styling */
.service-image {
    margin-bottom: 10px;
}

/* Service title */
.service-title {
    font-size: 18px;
    font-weight: 600;
    color: #333;
    margin-bottom: 10px;
}

/* Link styling */
.service-link {
    text-decoration: none;
    color: #007BFF;
    font-weight: 700;
}

.service-link:hover {
    text-decoration: underline;
    color: #0056b3;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    
 <div class="service-container">
        
        
        <div class="service-item">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                             ImageUrl="~/Image/icon-09-primary.png" 
                             Width="100px" Height="100px" 
                             CssClass="service-image" 
                             ToolTip="Life Insurance" />
            <p class="service-title">Life Insurance</p>
            <a href="Services/Life%20Insurance.aspx" class="service-link">Click here</a>
        </div>

        <div class="service-item">
            <asp:ImageButton ID="ImageButton5" runat="server" 
                             ImageUrl="~/Image/icon-08-primary.png" 
                             Width="100px" Height="100px" 
                             CssClass="service-image" 
                             ToolTip="Car Insurance" />
            <p class="service-title">Car Insurance</p>
            <a href="Services/Car Insurance.aspx" class="service-link">Click here</a>
        </div>

        <div class="service-item">
            <asp:ImageButton ID="ImageButton3" runat="server" 
                             ImageUrl="~/Image/icon-10-primary.png" 
                             Width="100px" Height="100px" 
                             CssClass="service-image" 
                             ToolTip="Health Insurance" />
            <p class="service-title">Health Insurance</p>
            <a href="Services/Health Insurance.aspx" class="service-link">Click here</a>
        </div>

        <div class="service-item">
            <asp:ImageButton ID="ImageButton6" runat="server" 
                             ImageUrl="~/Image/icon-05-primary.png" 
                             Width="100px" Height="100px" 
                             CssClass="service-image" 
                             ToolTip="Home Insurance" />
            <p class="service-title">Home Insurance</p>
            <a href="Services/Home Insurance.aspx" class="service-link">Click here</a>
        </div>

        <div class="service-item">
            <asp:ImageButton ID="ImageButton2" runat="server" 
                             ImageUrl="~/Image/icon-06-primary.png" 
                             Width="100px" Height="100px" 
                             CssClass="service-image" 
                             ToolTip="Mobile Insurance" />
            <p class="service-title">Mobile Insurance</p>
            <a href="Services/Mobile Insurance.aspx" class="service-link">Click here</a>
        </div>
    </div>
</asp:Content>

