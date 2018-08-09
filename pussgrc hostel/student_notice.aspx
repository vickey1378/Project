<%@ Page Title="" Language="C#" MasterPageFile="~/student_master.master" AutoEventWireup="true" CodeFile="student_notice.aspx.cs" Inherits="student_notice" %>
 
  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <%--<form id="idd" runat="server">--%>
<td style="width:80%; height:400px; vertical-align: top; text-align: left;">
                    <asp:Label ID="Label4" runat="server" CssClass="ver11" Style="vertical-align: top;
                        background-color: #66ff66; text-align: center" Width="100%" Height="20px"></asp:Label>&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                   <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" style="text-align: center; margin-left: 17px; margin-top: 0px;" Height="114px" Width="416px">
                        <Columns>
                            <asp:BoundField DataField="notice_sub" HeaderText="notice_sub" 
                                SortExpression="notice_sub" />
                            <asp:BoundField DataField="notice_msg" HeaderText="notice_msg" 
                                SortExpression="notice_msg" />
                            <asp:BoundField DataField="notice_date" HeaderText="notice_date" 
                                SortExpression="notice_date" />
                        </Columns>
                    </asp:GridView></center>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:hostel.MDFConnectionString %>" 
                        SelectCommand="SELECT * FROM [notice_dtl]"></asp:SqlDataSource>
         <%-- </form>--%>
</asp:Content>

