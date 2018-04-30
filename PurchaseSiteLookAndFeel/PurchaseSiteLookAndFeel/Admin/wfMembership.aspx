<%@ Page Title="" Language="C#" MasterPageFile="~/PurchaseSite.Master" AutoEventWireup="true" CodeBehind="wfMembership.aspx.cs" Inherits="PurchaseSiteLookAndFeel.Admin.wfMembership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Membership Services</h2>
<hr />
<div style="font-size: small">
<h3>New Login Requests</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RequestID" DataSourceID="SqlDataSource1" 
        EmptyDataText="No New Logins Requested">
        <Columns>
            <asp:BoundField DataField="RequestID" HeaderText="RequestID" 
                InsertVisible="False" ReadOnly="True" SortExpression="RequestID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:CheckBoxField DataField="CurrentCustomer" HeaderText="CurrentCustomer" 
                SortExpression="CurrentCustomer" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="CustomerType" HeaderText="CustomerType" 
                SortExpression="CustomerType" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            <asp:BoundField DataField="DateRequested" HeaderText="DateRequested" 
                SortExpression="DateRequested" />
            <asp:ButtonField Text="Reject" />
            <asp:ButtonField Text="Send Invitation" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:bsCotton_PurchaseSiteConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_ECOM_PurchaseSiteLoginRequests] WHERE [RequestID] = @original_RequestID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([CurrentCustomer] = @original_CurrentCustomer) OR ([CurrentCustomer] IS NULL AND @original_CurrentCustomer IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CustomerType] = @original_CustomerType) OR ([CustomerType] IS NULL AND @original_CustomerType IS NULL)) AND (([Note] = @original_Note) OR ([Note] IS NULL AND @original_Note IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([DateRequested] = @original_DateRequested) OR ([DateRequested] IS NULL AND @original_DateRequested IS NULL)) AND (([DateUpdated] = @original_DateUpdated) OR ([DateUpdated] IS NULL AND @original_DateUpdated IS NULL))" 
        InsertCommand="INSERT INTO [tbl_ECOM_PurchaseSiteLoginRequests] ([Name], [CurrentCustomer], [Address], [City], [State], [Zip], [Phone], [Email], [CustomerType], [Note], [Status], [DateRequested], [DateUpdated]) VALUES (@Name, @CurrentCustomer, @Address, @City, @State, @Zip, @Phone, @Email, @CustomerType, @Note, @Status, @DateRequested, @DateUpdated)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tbl_ECOM_PurchaseSiteLoginRequests] WHERE ([Status] IS NULL) ORDER BY [DateRequested]" 
        UpdateCommand="UPDATE [tbl_ECOM_PurchaseSiteLoginRequests] SET [Name] = @Name, [CurrentCustomer] = @CurrentCustomer, [Address] = @Address, [City] = @City, [State] = @State, [Zip] = @Zip, [Phone] = @Phone, [Email] = @Email, [CustomerType] = @CustomerType, [Note] = @Note, [Status] = @Status, [DateRequested] = @DateRequested, [DateUpdated] = @DateUpdated WHERE [RequestID] = @original_RequestID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([CurrentCustomer] = @original_CurrentCustomer) OR ([CurrentCustomer] IS NULL AND @original_CurrentCustomer IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([CustomerType] = @original_CustomerType) OR ([CustomerType] IS NULL AND @original_CustomerType IS NULL)) AND (([Note] = @original_Note) OR ([Note] IS NULL AND @original_Note IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([DateRequested] = @original_DateRequested) OR ([DateRequested] IS NULL AND @original_DateRequested IS NULL)) AND (([DateUpdated] = @original_DateUpdated) OR ([DateUpdated] IS NULL AND @original_DateUpdated IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_RequestID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_CurrentCustomer" Type="Boolean" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Zip" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CustomerType" Type="String" />
            <asp:Parameter Name="original_Note" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_DateRequested" Type="DateTime" />
            <asp:Parameter Name="original_DateUpdated" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CurrentCustomer" Type="Boolean" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CustomerType" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="DateRequested" Type="DateTime" />
            <asp:Parameter Name="DateUpdated" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CurrentCustomer" Type="Boolean" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CustomerType" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="DateRequested" Type="DateTime" />
            <asp:Parameter Name="DateUpdated" Type="DateTime" />
            <asp:Parameter Name="original_RequestID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_CurrentCustomer" Type="Boolean" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_Zip" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_CustomerType" Type="String" />
            <asp:Parameter Name="original_Note" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_DateRequested" Type="DateTime" />
            <asp:Parameter Name="original_DateUpdated" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
<hr />
<h3>Send Invitation</h3>
Search for Gins, Agents, etc
<br />
Will want a way to batch
    </div>
</asp:Content>
