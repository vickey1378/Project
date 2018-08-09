<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="new_admin_regis.aspx.cs" Inherits="new_admin_regis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<form id="vikash" runat="server">--%>
    <td style="width:80%; height:400px; vertical-align: top; text-align: left;">
                    &nbsp;<table style="left: 20px; position: relative; top: 3px; height: 319px; width: 597px; margin-right: 23px;" border="0" cellpadding="0" cellspacing="0">
                        <tr >
                            <td colspan="6" style="background-color: #3399cc">
                                <asp:Label ID="Label8" runat="server" CssClass="ver13"  Height="25px"
                                    Width="100%" BackColor="#660033" ForeColor="White"><center> Warden Registration</center></asp:Label></td>
                        
                       <%-- <td >img src="images/logo1.PNG" style="vertical-align: top; text-align: left;" height="100" width="250" alt ="" /></td>--%>
                        </tr>
                        <tr >
                            <td colspan="6" style="height: 25px; background-color: #3399cc">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" Height="25px"
                                    Style="vertical-align: top; text-align: right" Width="100%" BackColor="White">* Mendatory Fields</asp:Label></td>
                        </tr>
                        <tr >
                            <td style="background-color: #3399cc">
                                <asp:Label ID="Label4" runat="server" CssClass="ver11" Text="First Name" Width="87px"></asp:Label>
                            </td>
                            <td style="background-color: #3399cc">
                                <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox></td>
                            <td style="width: 9px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="background-color: #3399cc">
                                <asp:Label ID="Label5" runat="server" CssClass="ver11" Text="Last Name"></asp:Label></td>
                            <td style="width: 9px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="background-color: #3399cc; width: 308px;">
                                <asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox></td>
                        </tr>
                        <tr >
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label6" runat="server" CssClass="ver11" Text="Mobile No"></asp:Label></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox5" runat="server" Width="130px"></asp:TextBox></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label11" runat="server" CssClass="ver11" Text="Phone No"></asp:Label></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                            </td>
                            <td style="height: 20px; background-color: #3399cc; width: 308px;">
                                <asp:TextBox ID="TextBox6" runat="server" Width="130px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc;">
                                <asp:Label CssClass="ver11" ID="Label12" runat="server" Text="Parmanent Address" Width="131px"></asp:Label></td>
                            <td  style="height:20px; background-color: #3399cc;">
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Height="47px" 
                                    Width="130px"></asp:TextBox></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ControlToValidate="TextBox7" ErrorMessage="*" ID="RequiredFieldValidator6" runat="server"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label CssClass="ver11" ID="Label13" runat="server" Text="Date Of Birth"></asp:Label>
                                <asp:RequiredFieldValidator ControlToValidate="DropDownList1" ErrorMessage="*" ID="RequiredFieldValidator14" runat="server"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ControlToValidate="DropDownList2" ErrorMessage="*" ID="RequiredFieldValidator15" runat="server"></asp:RequiredFieldValidator></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ControlToValidate="DropDownList3" ErrorMessage="*" ID="RequiredFieldValidator16" runat="server"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc; width: 308px;">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server" 
                                    Width="55px" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                </asp:DropDownList></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label14" runat="server" CssClass="ver11" Text="Login ID" Width="131px"></asp:Label></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox8" runat="server" Width="130px"></asp:TextBox></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8"
                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label16" runat="server" CssClass="ver11" Text="Password" Width="131px"></asp:Label></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9"
                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc; width: 308px;">
                                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" Width="130px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label9" runat="server" CssClass="ver11" Text="Employee ID" Width="131px"></asp:Label></td>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox3" runat="server" Width="130px"></asp:TextBox></td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                            <td style="width: 9px; height: 20px; background-color: #3399cc">
                            </td>
                            <td style="height: 20px; background-color: #3399cc; width: 308px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" style="height: 18px; background-color: #3399cc">
                                <asp:Label ID="Label22" runat="server" Height="25px" Width="100%" BackColor="White"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 18px; background-color: #3399cc">
                            </td>
                            <td style="height: 18px; background-color: #3399cc">
                            </td>
                            <td style="width: 9px; height: 18px; background-color: #3399cc">
                            </td>
                            <td style="height: 18px; background-color: #3399cc">
                            </td>
                            <td style="width: 9px; height: 18px; background-color: #3399cc">
                            </td>
                            <td style="vertical-align: top; height: 18px; background-color: #3399cc; text-align: right; width: 308px;">
                                <asp:Button ID="Button1" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px" OnClick="Button1_Click" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="Submit" />&nbsp;
                                      <asp:Button ID="Button2" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px"  CausesValidation="False" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="Cancel"  OnClick="Button2_Click" />&nbsp;
                                <%--PostBackUrl="~/login.aspx"--%>
                                   
                                </td>
                        </tr>
                    </table>
                </td><%--</form>--%>
</asp:Content>

