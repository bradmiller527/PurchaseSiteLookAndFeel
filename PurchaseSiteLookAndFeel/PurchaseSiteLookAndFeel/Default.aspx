<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PurchaseSiteLookAndFeel.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 124px;
        }
        .style2
        {
            width: 87px;
        }
        .style3
        {
            width: 124px;
            height: 26px;
        }
        .style4
        {
            width: 87px;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="MainBodyWithPicWindow">
    <div style="background-position: center center; text-align: center; background-image: url('http://localhost:51386/ECOM Cotton faded.jpg'); background-repeat: no-repeat;">
    <h2>Welcome to ECOM Cotton</h2>
    <p>
        With over 167 years of market experience, ECOM is committed to responsible 
        leadership in the soft commodities industry. Its global operations rely on its 
        extensive knowledge and experience in supply chain improvement, risk management 
        and client-focused distribution to create a valuable and profitable environment 
        for our suppliers, customers, shareholders and employees.</p>
        <p style="font-weight: bold; color: #FF0000;">
            Remember to check out our new Contracts - We&#39;re accepting them today for 2018 
            crop
        </p>
        <p>
            When you are ready to get started, click here to request a login. 
    </p>
    <span style="position: relative; left:0px;">
<%--        <asp:Button ID="Button1" runat="server" Text="Request Login" 
            BackColor="#70A539" Font-Bold="True" ForeColor="White" /> backcolor="#70A539" --%>
        <asp:LinkButton ID="LinkButton1" runat="server" Text="Request Login" Font-Bold="True" ForeColor="White" BackColor="#6F934A" PostBackUrl="~/wfRequestNewLogin.aspx">Request Login</asp:LinkButton>

    </span>
    <p>
            We look forward to serving you! 
    </p>
    </div>
        <table style="width: 100%;">
            <tr>
                <td class="style3">
                    MAY (CTK8)
                </td>
                <td class="style4">
                    82.26
                </td>
                <td class="style5">
                    -93
                </td>
            </tr>
                        <tr>
                <td class="style1">
                    JUL (CTN8)
                </td>
                <td class="style2">
                    81.51
                </td>
                <td>
                    -261
                </td>
            </tr>
            <tr>
                <td class="style1">
                    OCT (CTV8)
                </td>
                <td class="style2">
                    79.14
                </td>
                <td>
                    -202
                </td>
            </tr>
            <tr>
                <td class="style1">
                    DEC (CTZ8)
                </td>
                <td class="style2">
                    77.59
                </td>
                <td>
                    -176
                </td>
            </tr>
            <tr>
                <td class="style1">
                    MAR (CTH9)
                </td>
                <td class="style2">
                    77.71
                </td>
                <td>
                    -150
                </td>
            </tr>
        </table>
    </div>
    <div class="MainBodyPicWindow">
            <asp:Image ID="Image4" runat="server" Height="236px" ImageUrl="~/Images/cotton bolls.jpg" 
            Width="329px" />

        <asp:Image ID="Image2" runat="server" Height="236px" ImageUrl="~/cotton.JPG" 
            Width="329px" />

        <asp:Image ID="Image3" runat="server" Height="236px" ImageUrl="~/Images/modules.jpg" 
            Width="329px" />
    </div>

</asp:Content>
