<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseSite.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PurchaseSiteLookAndFeel.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="MainBodyWithPicWindow">
    <asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" 
    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
    Font-Size="0.8em" ForeColor="#333333" Height="188px" TextLayout="TextOnTop" 
    Width="306px">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" 
        ForeColor="White" />
</asp:Login>
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
