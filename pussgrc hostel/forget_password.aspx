<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget_password.aspx.cs" Inherits="forget_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><table style="left: -79px; position: relative; top: 5px; width: 304px; height: 227px;">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label4" runat="server" CssClass="ver13" Text="<center>Forget Password</center>"
                                    Width="100%" BackColor="#660033" ForeColor="White"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label5" runat="server" CssClass="ver11" Text="Login Id"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label6" runat="server" CssClass="ver11" Text="Mother Name"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></td>
                               <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label7" runat="server" CssClass="ver11" Text="Father Name"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                               <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="vertical-align: top; text-align: right">
                                <asp:Button ID="Button1" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px" OnClick="Button1_Click" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="Submit" />
                                <asp:Button ID="Button2" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px" CausesValidation="False"  PostBackUrl="~/login.aspx" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="Back" OnClick="Button2_Click" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label8" runat="server" CssClass="ver11"></asp:Label></td>
                        </tr>
                    </table></center>
</asp:Content>

