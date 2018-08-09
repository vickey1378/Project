<%@ Page Title="" Language="C#" MasterPageFile="~/student_master.master" AutoEventWireup="true" CodeFile="student_fee_dtl.aspx.cs" Inherits="student_fee_dtl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><table class="style1">
                        <tr>
                            <td style="width:26%">
                                &nbsp;</td>
                            <td style="width:23%">
                                &nbsp;</td>
                            <td style="width:25%">
                                &nbsp;</td>
                            <td style="width:2%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26%">
                                &nbsp;</td>
                            <td style="width: 23%">
                                <center><asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                    AutoGenerateColumns="False" Height="391px" style="margin-left: 9px; margin-right: 0px" Width="16px">
                                    <Columns>
                                      <%--<asp:BoundField DataField="total_fee" HeaderText="total_fee" 
                                            SortExpression="total_fee" />--%>
                                        <asp:BoundField DataField="hostel_fee" HeaderText="hostel_fee" 
                                            SortExpression="hostel_fee" />
                                        <asp:BoundField DataField="mess_fee" HeaderText="mess_fee" 
                                            SortExpression="mess_fee" />
                                        <asp:BoundField DataField="extra_fee" HeaderText="extra_fee" 
                                            SortExpression="extra_fee" />
                                        <asp:BoundField DataField="paid_amount" HeaderText="paid_amount" 
                                            SortExpression="paid_amount" />
                                        <asp:BoundField DataField="due_amount" HeaderText="due_amount" 
                                            SortExpression="due_amount" />
                                        <asp:BoundField DataField="paying mode" HeaderText="paying mode" 
                                            SortExpression="paying mode" />
                                        <asp:BoundField DataField="slip/ddno" HeaderText="slip/ddno" 
                                            SortExpression="slip/ddno" />
                                        <asp:BoundField DataField="DateOfPaying" HeaderText="DateOfPaying" 
                                            SortExpression="DateOfPaying" />
                                    </Columns>
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView></center>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td style="width: 2%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26%">
                                &nbsp;</td>
                            <td style="width: 23%">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td style="width: 2%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 26%">
                                &nbsp;</td>
                            <td style="width: 23%">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td style="width: 2%">
                                &nbsp;</td>
                        </tr>
                    </table></center>
</asp:Content>

