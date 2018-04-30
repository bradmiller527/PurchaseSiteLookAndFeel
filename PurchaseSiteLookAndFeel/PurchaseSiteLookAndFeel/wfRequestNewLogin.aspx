<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseSite.Master" AutoEventWireup="true" CodeBehind="wfRequestNewLogin.aspx.cs" Inherits="PurchaseSiteLookAndFeel.wfRequestNewLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="MainBodyWithPicWindow">
    <p>Thank you for your interest in working with us!</p>
<p>Please take a moment to fill out the fields below and a representitive will contact you soon</p>





    <asp:Panel ID="Panel1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="RequestID" 
    DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="537px" 
            oniteminserting="FormView1_ItemInserting">
        <EditItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            DateRequested:
            <asp:TextBox ID="DateRequestedTextBox" runat="server" 
                Text='<%# Bind("DateRequested") %>' />
            <br />
            Note:
            <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            CustomerType:
            <asp:TextBox ID="CustomerTypeTextBox" runat="server" 
                Text='<%# Bind("CustomerType") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Zip:
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            CurrentCustomer:
            <asp:CheckBox ID="CurrentCustomerCheckBox" runat="server" 
                Checked='<%# Bind("CurrentCustomer") %>' />
            <br />
            RequestID:
            <asp:Label ID="RequestIDLabel1" runat="server" 
                Text='<%# Eval("RequestID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    Name
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' 
                        Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Are you a Current Customer?
                </td>
                <td>
                    <asp:CheckBox ID="CurrentCustomerCheckBox" runat="server" 
                        Checked='<%# Bind("CurrentCustomer") %>' Text="Yes" />
                </td>
            </tr>

            <tr>
                <td class="style1">
                    Customer Type
                </td>
                <td>
<%--                    <asp:TextBox ID="CustomerTypeTextBox" runat="server" 
                        Text='<%# Bind("CustomerType") %>' />--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" 
                        SelectedValue='<%# Bind("CustomerType") %>' Width="122px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Producer</asp:ListItem>
                        <asp:ListItem>Gin</asp:ListItem>
                        <asp:ListItem>Agent</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="style1">
                    Email
                </td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' 
                        Width="300px" />
                </td>
            </tr>
            <tr>
            <td class="style1">
            Phone
            </td>
            <td>
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' 
                    Width="300px" />
            </td>
            </tr>
            <tr>
            <td class="style1">
            Zip
            </td>
            <td>
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' 
                    Width="300px" />
            </td>
            </tr>
            <tr>
            <td class="style1">
            State
            </td>
            <td>
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' 
                    Width="300px" />
            </td>
            </tr>
            <tr>
            <td class="style1">
            City
            </td>
            <td>
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' 
                    Width="300px" />
            </td>
            </tr>
            <tr>
            <td class="style1">
            Address
            </td>
            <td>
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' 
                    Width="300px" />
            </td>
            </tr>
            <tr>
            <td class="style1">
            Note
            </td>
            <td>
            <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' 
                    Height="88px" TextMode="MultiLine" Width="295px" />
            </td>
            </tr>

        </table>


            
            
            




            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" onclick="InsertButton_Click" 
                ondatabinding="InsertButton_DataBinding" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                PostBackUrl="~/Default.aspx" />
        </InsertItemTemplate>
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            DateRequested:
            <asp:Label ID="DateRequestedLabel" runat="server" 
                Text='<%# Bind("DateRequested") %>' />
            <br />
            Note:
            <asp:Label ID="NoteLabel" runat="server" Text='<%# Bind("Note") %>' />
            <br />
            CustomerType:
            <asp:Label ID="CustomerTypeLabel" runat="server" 
                Text='<%# Bind("CustomerType") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Zip:
            <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            CurrentCustomer:
            <asp:CheckBox ID="CurrentCustomerCheckBox" runat="server" 
                Checked='<%# Bind("CurrentCustomer") %>' Enabled="false" />
            <br />
            RequestID:
            <asp:Label ID="RequestIDLabel" runat="server" Text='<%# Eval("RequestID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <b>Thank you! You're request has been submitted!</b>
    </asp:Panel>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:bsCotton_PurchaseSiteConnectionString %>" 
    DeleteCommand="DELETE FROM [tbl_ECOM_PurchaseSiteLoginRequests] WHERE [RequestID] = @RequestID" 
    InsertCommand="INSERT INTO [tbl_ECOM_PurchaseSiteLoginRequests] ([Name], [DateRequested], [Note], [CustomerType], [Email], [Phone], [Zip], [State], [City], [Address], [CurrentCustomer]) VALUES (@Name, @DateRequested, @Note, @CustomerType, @Email, @Phone, @Zip, @State, @City, @Address, @CurrentCustomer)" 
    SelectCommand="SELECT [Name], [DateRequested], [Note], [CustomerType], [Email], [Phone], [Zip], [State], [City], [Address], [CurrentCustomer], [RequestID] FROM [tbl_ECOM_PurchaseSiteLoginRequests]" 
    UpdateCommand="UPDATE [tbl_ECOM_PurchaseSiteLoginRequests] SET [Name] = @Name, [DateRequested] = @DateRequested, [Note] = @Note, [CustomerType] = @CustomerType, [Email] = @Email, [Phone] = @Phone, [Zip] = @Zip, [State] = @State, [City] = @City, [Address] = @Address, [CurrentCustomer] = @CurrentCustomer WHERE [RequestID] = @RequestID">
    <DeleteParameters>
        <asp:Parameter Name="RequestID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="DateRequested" Type="DateTime" />
        <asp:Parameter Name="Note" Type="String" />
        <asp:Parameter Name="CustomerType" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Zip" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="CurrentCustomer" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="DateRequested" Type="DateTime" />
        <asp:Parameter Name="Note" Type="String" />
        <asp:Parameter Name="CustomerType" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Phone" Type="String" />
        <asp:Parameter Name="Zip" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="CurrentCustomer" Type="Boolean" />
        <asp:Parameter Name="RequestID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
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
