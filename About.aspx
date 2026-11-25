<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style>
body 
    {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
     }

.container {
    width: 95%;
    margin: 0px 40px 50px 0px;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
}

h1, h2 {
    color: #2c3e50;
}

ul {
    list-style-type: disc;
    margin-left: 20px;
}

a {
    color: #3498db;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
    .style1
    {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container">
            <h1 class="style1" 
                
                style="font-size: 30px; font-weight: bold; font-style: normal; text-transform: uppercase; color: #000000; font-family: 'Times New Roman', Times, serif; text-decoration: blink; background-color: #C0C0C0;">About Us</h1>
            <p style="font-family: 'Times New Roman', Times, serif; font-size: 16px;">
                Welcome to <strong>our Insurance Company </strong>. 
            </p>
            <p style="font-family: 'Times New Roman', Times, serif; font-size: 16px;">
                We are committed to protecting what matters most to you by providing personalized and reliable insurance solutions.
            </p>
            <h2 style="text-transform: capitalize; color: #000000; font-family: 'Times New Roman', Times, serif; font-size: 20px">Our Mission</h2>
            <p style="font-size: 16px; font-family: 'Times New Roman', Times, serif">
                Our mission is to empower individuals, families, and businesses by offering the peace of mind that comes with comprehensive insurance coverage.
            </p>
            <h2 style="font-size: 20px; text-transform: capitalize; font-family: 'Times New Roman', Times, serif; color: #000000">Why Choose Us?</h2>
            <ul style="font-family: 'Times New Roman', Times, serif; font-size: 15px">
                <li style="font-family: 'Times New Roman', Times, serif"><strong>Customer-Centric Approach:</strong> We prioritize your needs and tailor solutions to your lifestyle.</li>
                <li style="font-family: 'Times New Roman', Times, serif"><strong>Trusted Expertise:</strong> Our team simplifies the complexities of insurance for you.</li>
                <li style="font-family: 'Times New Roman', Times, serif"><strong>Comprehensive Coverage:</strong> From life insurance to commercial policies, we’ve got you covered.</li>
                <li style="font-family: 'Times New Roman', Times, serif"><strong>24/7 Support:</strong> Count on us for reliable assistance whenever you need it.</li>
            </ul>
            <p style="font-size: 18px; font-family: 'Times New Roman', Times, serif">
                At <strong>our Insurance Company </strong>, we focus on building long-term relationships. Let us help secure your future with solutions you can trust.
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            
        </div>

</asp:Content>

