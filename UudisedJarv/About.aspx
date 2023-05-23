<%@ Page Title="Uudised" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UudisedJarv.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uudised</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" ReadOnly="True" SortExpression="uudis_id" />
            <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedbaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudiseTeema], [kirjeldus], [kuupaev]) VALUES (@uudiseTeema, @kirjeldus, @kuupaev)" ProviderName="<%$ ConnectionStrings:uudisedbaas2ConnectionString1.ProviderName %>" SelectCommand="SELECT [uudis_id], [uudiseTeema], [kirjeldus], [kuupaev] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudiseTeema] = @uudiseTeema, [kirjeldus] = @kirjeldus, [kuupaev] = @kuupaev WHERE [uudis_id] = @uudis_id">
        <DeleteParameters>
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uudiseTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <h3>
        <br />
        <br />
        Lisa Uudis </h3>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" InsertVisible="False" ReadOnly="True" SortExpression="uudis_id" />
                <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:CommandField ShowInsertButton="True" CancelText="Loobu" InsertText="Lisa" />
            </Fields>
        </asp:DetailsView>
   
    <p>
        &nbsp;</p>
    


</asp:Content>
