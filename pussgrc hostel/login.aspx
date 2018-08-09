<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <form id="form1" runat="server"  > --%> 
    <table border="0" cellpadding="0" cellspacing="0" style="position: relative; top: 37px; left: -41px; height: 447px; width: 95%;">
                        
                            <tr>

                              <td colspan="7" style="vertical-align: top; text-align: center" class="style2">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="ver11"
                                    RepeatDirection="Horizontal" style="vertical-align: top; text-align: left" 
                                    BackColor="#CC0066" Height="58px" 
                                    OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="300px" ForeColor="White">
                                    <asp:ListItem>Login Student</asp:ListItem>
                                    <asp:ListItem>Login Warden</asp:ListItem>
                                </asp:RadioButtonList><br />


                                </td>
                                </tr>
                      <tr>
                            <center>  <td align="center"> <asp:Label ID="Label4" runat="server" CssClass="ver11" Height="16px" 
                                    Width="100%"></asp:Label>
                            </td></center>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Login ID="Login1" runat="server" Width="261px" BackColor="#F7F6F3" 
                                    BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="110px" style="margin-top: 0px">
                                    <LayoutTemplate>
                                        <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse; margin-top: 0px;">
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" style="width: 274px; height: 122px;">
                                                        <tr>
                                                            <td align="center"  colspan="2">
                                                                Log In</td>
                                                        </tr>
                                                        <tr>
                                                            <td align=" right">
                                                                &nbsp; &nbsp;
                                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                                &nbsp;&nbsp; </td>
                                                            <td>
                                                                <asp:TextBox ID="UserName" runat="server" style="margin-left: 0px"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align=" right">
                                                            
                                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                                                                 
                                                            <td>
                                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="2">
                                                                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                    <TextBoxStyle Font-Size="0.8em" />
                                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                                </asp:Login>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="ver11" NavigateUrl="~/forget_password.aspx"
                                    Width="164px" Height="16px">FORGET PASSWORD</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="ver11" NavigateUrl="~/student_change_password.aspx">CHANGE PASSWORD</asp:HyperLink>
                                <asp:Login ID="Login2" runat="server" Width="276px" BackColor="#F7F6F3" 
                                    BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="137px" 
                                    onauthenticate="Login2_Authenticate1">
                                    <LayoutTemplate>
                                        <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse; margin-top: 0px;">
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" style="height: 124px; width: 268px">
                                                        <tr>
                                                            <td align="center" colspan="2">
                                                                Log In</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" >
                                                            &nbsp;<asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                            &nbsp;&nbsp;</td>
                                                           <%-- <caption>
                                                               
                                                            </caption>--%>
                                                 <td> <%--class="style1">--%>
                                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align=" right">
                                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label></td>
                                                            <td>
                                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                           <%-- <td align="center" colspan="2" style="color: red">
                                                                &nbsp;</td>--%>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="2">
                                                                &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Log In" />&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                    <TextBoxStyle Font-Size="0.8em" />
                                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                                </asp:Login>
                                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="ver11" 
                                    NavigateUrl="~/warden_forget_password.aspx" Width="180px">FORGET PASSWORD</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="ver11" NavigateUrl="~/change_password.aspx">CHANGE PASSWORD</asp:HyperLink></td>
                        </tr>
                    </table>
                    </td>
            </tr>
          
        </table><%--</form>--%>
</asp:Content>

