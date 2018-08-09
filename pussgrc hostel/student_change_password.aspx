<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student_change_password.aspx.cs" Inherits="student_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="height: 301px; width: 600px; margin-left: 0px; margin-bottom: 0px"> <%--<asp:Label ID="Label1" runat="server" BackColor="Lime" CssClass="ver11" Width="109%" Height="25px"></asp:Label>--%>
     <table border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
         <tr>
              <td style="height: 261px">
                        <table border="0" cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bolder; font-size: large; color: white;background-color: #800080">Change Your Password</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 271px">
                                     Login Id:</td>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt1" runat="server" Font-Size="0.8em" TextMode="Password" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidat" runat="server" ControlToValidate="txt1"  ErrorMessage="Logi Id is required.">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 271px">
                                    Password:</td>
                                <td>
                                    <asp:TextBox ID="txtcp" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="txtcp"
                                        ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 271px">
                                  New Password:</td>
                                <td>
                                    <asp:TextBox ID="txtpwd" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="txtpwd"
                                        ErrorMessage="New Password is required." ToolTip="New Password is required.">
                                       *</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 271px">
                                 Confirm New Password:</td>
                                <td>
                                    <asp:TextBox ID="txtcpwd" runat="server" Font-Size="0.8em" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="txtcpwd" controlTocompare="txtpwd"
                                        ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required.">
                                      
                                        *</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2"></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: red">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 2px">
                                    <asp:Button ID="Button1" runat="server" CssClass="ver11" OnClick="Button1_Click"
                                        Text="Change Password" BackColor="#660033" ForeColor="White" Height="28px" />
                                    </td>
                                <td style="height: 2px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;<asp:Button ID="Button2" runat="server" CssClass="ver11" CausesValidation="False"
                                        Text="Back" BackColor="#660033" ForeColor="White" Height="28px" OnClick="Button2_Click" PostBackUrl="~/login.aspx" /></td></tr>
                               <tr> <td style="width: 271px"><asp:Label ID="lb" runat="server"></asp:Label></td>
                            </tr>
       
                            </table>
              
   </center>
</asp:Content>

