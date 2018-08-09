<%@ Page Title="" Language="C#" MasterPageFile="~/student_master.master" AutoEventWireup="true" CodeFile="student_outing_form.aspx.cs" Inherits="student_outing_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <td style="width:80%; height:400px; vertical-align: top; text-align: left;">
                    <asp:Label ID="Label4" runat="server" CssClass="ver11" Style="vertical-align: top;
                        background-color: #66ff66; text-align: center" Width="100%"></asp:Label>&nbsp;
                    <table border="0" cellpadding="0" cellspacing="0" style="left: 44px; position: relative;
                        top: -7px; width: 388px; height: 395px; margin-left: 16px;">
                        <tr>
                            <td colspan="3" style="background-color: #3399cc">
                                <asp:Label ID="Label118" runat="server" CssClass="ver13" Height="21px"
                                    Width="100%" BackColor="#660033"  Font-Bold="True" Font-Names="Verdana"
                                    Font-Size="Small" ForeColor="White"><center>Outing Information I </center></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 25px; background-color: #3399cc">
                                <asp:Label ID="Label117" runat="server" Font-Bold="True" ForeColor="Red" Height="25px"
                                    Style="vertical-align: top; text-align: right; margin-top: 0px;" Width="100%" BackColor="White"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="background-color: #3399cc">
                                <asp:Label ID="Label5" runat="server" CssClass="ver11" Text="Login ID" Width="87px"></asp:Label>
                            </td>
                            <td style="width: 209px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="background-color: #3399cc">
                                <asp:Label ID="Label15" runat="server" CssClass="ver11" Width="91px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label6" runat="server" CssClass="ver11" Text="Student Name" Width="100px"></asp:Label></td>
                            <td style="width: 209px; height: 20px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" 
                                    style="margin-right: 1px" Width="150px"></asp:TextBox></td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label17" runat="server" CssClass="ver11" Text="Outing Out Time"></asp:Label></td>
                            <td style="width: 209px; background-color: #3399cc">
                                <asp:DropDownList ID="DropDownList7" runat="server" Width="55px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList8" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList11" runat="server" Width="50px">
                                    <asp:ListItem>A.M.</asp:ListItem>
                                    <asp:ListItem>P.M.</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label8" runat="server" CssClass="ver11" Text="Outing In Time" Width="109px"></asp:Label></td>
                            <td style="width: 209px; height: 20px; background-color: #3399cc">
                                <asp:DropDownList ID="DropDownList9" runat="server" Width="55px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList10" runat="server" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged"
                                    Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList12" runat="server" Width="50px">
                                    <asp:ListItem>A.M.</asp:ListItem>
                                    <asp:ListItem>P.M.</asp:ListItem>
                                </asp:DropDownList></td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #FFFFFF">
                                <asp:Label ID="Label11" runat="server" CssClass="ver11" Width="109px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label9" runat="server" BackColor="#660033" Font-Bold="True" Font-Names="Verdana"
                                    Font-Size="Small"  Style="vertical-align: top; background-color: #660033;
                                    text-align: left" Width="100%" Height="21px" ForeColor="White"><center>Outing  Information II</center></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label12" runat="server" CssClass="ver11" Width="109px"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label10" runat="server" CssClass="ver11" Text="No Of Days" Width="87px"></asp:Label></td>
                            <td style="width: 209px; height: 20px; background-color: #3399cc">
                                <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox9" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label110" runat="server" CssClass="ver11" Text="Date Out" Width="87px"></asp:Label></td>
                            <td style="width: 209px; height: 20px; background-color: #3399cc">
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server" Width="55px">
                                </asp:DropDownList></td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px; background-color: #3399cc">
                                <asp:Label ID="Label111" runat="server" CssClass="ver11" Text="Date In" Width="87px"></asp:Label></td>
                            <td style="width: 209px; height: 20px; background-color: #3399cc">
                                <asp:DropDownList ID="DropDownList4" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList5" runat="server" Width="50px">
                                </asp:DropDownList><asp:DropDownList ID="DropDownList6" runat="server" Width="55px">
                                </asp:DropDownList></td>
                            <td style="height: 20px; background-color: #3399cc">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 18px; background-color: #3399cc">
                                <asp:Label ID="Label22" runat="server" Height="25px" Width="101%" BackColor="White"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="vertical-align: top; height: 18px; background-color: #3399cc;
                                text-align: right">
                                <asp:Button ID="Button1" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px" OnClick="Button1_Click" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="SUBMIT" />&nbsp;
                                <asp:Button ID="Button2" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                    BorderWidth="1px" CausesValidation="False" OnClick="Button2_Click" Style="background-image: url(image/nav_bg.gif);
                                    background-color: black" Text="CANCEL" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lb" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                   </td>
</center>
</asp:Content>

