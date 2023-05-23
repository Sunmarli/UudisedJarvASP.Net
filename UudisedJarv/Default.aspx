<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UudisedJarv._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <h1> Uuudiste veebi ilmad</h1>
    <p> &nbsp;</p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="temp" HeaderText="temp" SortExpression="temp" />
                <asp:BoundField DataField="uudiseTeema" HeaderText="uudiseTeema" SortExpression="uudiseTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedbaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [ilm] WHERE [ilm_id] = @ilm_id" InsertCommand="INSERT INTO [ilm] ([kuupaev], [temp], [uudis_id]) VALUES (@kuupaev, @temp, @uudis_id)" SelectCommand="SELECT ilm.kuupaev, ilm.temp, uudised.uudiseTeema, uudised.kirjeldus FROM ilm INNER JOIN uudised ON ilm.uudis_id = uudised.uudis_id" UpdateCommand="UPDATE [ilm] SET [kuupaev] = @kuupaev, [temp] = @temp, [uudis_id] = @uudis_id WHERE [ilm_id] = @ilm_id">
            <DeleteParameters>
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="kuupaev" />
                <asp:Parameter Name="temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="kuupaev" />
                <asp:Parameter Name="temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
   
  

</asp:Content>
