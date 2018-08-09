<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="admin_welcome.aspx.cs" Inherits="admin_welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="idd" runat="server" style="margin-right: 11px">--%>
    <asp:Label ID="Label1" runat="server" CssClass="ver11" Style="vertical-align: top;
        background-color: #66ff66; text-align: center; margin-left: 0px; margin-right: 0px;" Width="99%" Height="25px"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnadd" runat="server" BackColor="#660033" ForeColor="White" Height="36px" OnClick="btnadd_Click" style="margin-left: 0px" Text="ADD NEW ADMIN" Width="161px" />
    <br />
    <br />
 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
        Style="left: -21px; position: relative; top: 8px; width: 439px; height: 264px;">
        <Fields>
            <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
            <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
            <asp:BoundField DataField="Mobile_No" HeaderText="Mobile No" SortExpression="Mobile_No" />
            <asp:BoundField DataField="Phone_No" HeaderText="Phone No" SortExpression="Phone_No" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date Of Birth" SortExpression="Date_Of_Birth" />
            <asp:BoundField DataField="Login_ID" HeaderText="Login_ID" ReadOnly="True" SortExpression="Login_ID" />
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" SortExpression="Employee_ID" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:DetailsView>
    <br />
    <br /><%--</form>--%>
    </asp:Content>




















