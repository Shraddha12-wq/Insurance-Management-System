<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
       <style>
           
    .banner-image {
    width: 100%;
    height: 401px;
    border-radius: 8px;
}

.home-banner {
    text-align: center;
    padding: 10px;
    background-color: #f4f4f4;
}

.home-banner h2 {
    color: #4CAF50;
    font-size: 25px;
            height: 32px;
            margin-top: 0px;
        }

.home-banner p {
    font-size: 16px;
}

</style>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    <div class="home-banner">
       <h2>Welcome to Our Insurance Company</h2>
        <p>Affordable and reliable insurance solutions for every stage of life.</p>
        <img src="Image/istockphoto-1199060494-612x612.jpg" alt="Insurance Company" class="banner-image" />
     
    
 
  
</asp:Content>
