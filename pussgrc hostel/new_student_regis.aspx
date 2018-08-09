<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="new_student_regis.aspx.cs" Inherits="new_student_regis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <center>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Label"  CssClass="ver11" style="vertical-align: bottom; text-align: left" BackColor="White" ForeColor="#FF0066"></asp:Label><br /><br />
        <asp:Label 
                        ID="Label24" runat="server" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#993300" 
                        style="top: 107px;  width: 503px" 
                        Text="New User Id :"></asp:Label></center>
    <table style="left: 92px; position: relative; top: 5px; height: 535px; width: 682px; margin-right: 0px;" 
                      border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td colspan="6" style="background-color: #3399cc">
                                    <asp:Label ID="Label8" runat="server" CssClass="ver13"  Height="25px"
                                        Width="100%" BackColor="#660033" ForeColor="White" ><center>New Student Registration</center></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="background-color:#3399cc">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" Height="19px"
                                        Style="vertical-align: top; text-align:right; margin-top: 5px;" Width="99%" BackColor="White">* Mandatory Fields</asp:Label></td>
                            </tr>
                            <tr>
                                <td style="background-color: #3399cc">
                                    <asp:Label ID="Label4" runat="server" CssClass="ver11" Text="First Name" Width="87px"></asp:Label>
                                </td>
                                <td style="background-color: #3399cc" class="style4">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black"></asp:TextBox></td>
                                <td style="background-color: #3399cc" class="style5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td style="background-color: #3399cc">
                                    <asp:Label ID="Label5" runat="server" CssClass="ver11" Text="Last Name"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style8">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                                <td style="background-color: #3399cc; width: 174px;">
                                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                                        Width="130px" BackColor="White" ForeColor="Black"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="height: 55px; background-color: #3399cc">
                                    <asp:Label ID="Label9" runat="server" CssClass="ver11" Text="Father Name"></asp:Label></td>
                                <td style="background-color: #3399cc; height: 55px;" class="style2">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black"></asp:TextBox></td>
                                <td style="background-color: #3399cc; height: 55px;" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 55px; background-color: #3399cc">
                                    <asp:Label ID="Label10" runat="server" CssClass="ver11" Text="Mother Name"></asp:Label></td>
                                <td style="background-color: #3399cc; height: 55px;" class="style9">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 55px; background-color: #3399cc; width: 174px;">
                                    <asp:TextBox ID="TextBox4" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label6" runat="server" CssClass="ver11" Text="Mobile No"></asp:Label>
                                    .</td>
                                <td style="background-color: #3399cc" class="style2">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black" Height="16px" MaxLength="10"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="TextBox5" 
                                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                </td>
                                <td style="background-color: #3399cc" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label11" runat="server" CssClass="ver11" Text="Phone No"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style9">
                                </td>
                                <td style="height: 20px; background-color: #3399cc; width: 174px;">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label12" runat="server" CssClass="ver11" Text="Parmanent Address"
                                        Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style2">
                                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" BackColor="White" 
                                        ForeColor="Black" Height="56px" Width="130px"></asp:TextBox></td>
                                <td style="background-color: #3399cc" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label13" runat="server" CssClass="ver11" Text="Date Of Birth"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList1"
                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList2"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="background-color: #3399cc" class="style9">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList3"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc; width: 174px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="50px" 
                                        BackColor="White" ForeColor="Black">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" 
                                        Width="50px" BackColor="White" ForeColor="Black"> 
                                        
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        Width="55px" BackColor="White" ForeColor="Black" onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label14" runat="server" CssClass="ver11" Text="Login ID" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style2">
                                    <asp:TextBox ID="TextBox8" runat="server" Width="130px" BackColor="White" 
                                        ForeColor="Black"></asp:TextBox></td>
                                <td style="background-color: #3399cc" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" 
                                        ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="email id is not valid" ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="aa"></asp:RegularExpressionValidator></td>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label15" runat="server" CssClass="ver11" Text="Course" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style9">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList4"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc; width: 174px;">
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="128px" 
                                        BackColor="White" ForeColor="Black">
                                        
                                        <asp:ListItem>LLB</asp:ListItem>
                                        <asp:ListItem>MCA</asp:ListItem>
                                        <asp:ListItem>B.TECH</asp:ListItem>
                                        </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label16" runat="server" CssClass="ver11" Text="Password" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style2">
                                    <asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox9_TextChanged" 
                                        TextMode="Password" Width="130px" BackColor="White" ForeColor="Black"></asp:TextBox></td>
                                <td style="background-color: #3399cc" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label17" runat="server" CssClass="ver11" Text="Confirm Password" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style9">
                                </td>
                                <td style="height: 20px; background-color: #3399cc; width: 174px;">
                                  <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" Width="130px" 
                                        ForeColor="Black"></asp:TextBox>
                                   <asp:CompareValidator id="comparetxt" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10"
                                          ErrorMessage="Your passwords do not match!" Display="Dynamic" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label18" runat="server" CssClass="ver11" Text="Duration" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style2">
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="128px" 
                                        BackColor="White" ForeColor="Black">
                                        <asp:ListItem>1 Year</asp:ListItem>
                                        <asp:ListItem>2 Year</asp:ListItem>
                                        <asp:ListItem>3 Year</asp:ListItem>
                                        <asp:ListItem>4 Year</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="background-color: #3399cc" class="style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList5"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc">
                                    <asp:Label ID="Label19" runat="server" CssClass="ver11" Text="Semester" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style9">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList6"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 20px; background-color: #3399cc; width: 174px;">
                                    <asp:DropDownList ID="DropDownList6" runat="server" Width="128px" 
                                        BackColor="White" ForeColor="Black">
                                        <asp:ListItem>I</asp:ListItem>
                                        <asp:ListItem>II</asp:ListItem>
                                        <asp:ListItem>III</asp:ListItem>
                                        <asp:ListItem>IV</asp:ListItem>
                                        <asp:ListItem>V</asp:ListItem>
                                        <asp:ListItem>VI</asp:ListItem>
                                        <asp:ListItem>VII</asp:ListItem>
                                        <asp:ListItem>VIII</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="height: 18px; background-color: #3399cc">
                                    <asp:Label ID="Label20" runat="server" CssClass="ver11" Text="Class Section" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style3">
                                    <asp:DropDownList ID="DropDownList7" runat="server" Width="128px" 
                                        BackColor="White" ForeColor="Black">
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                 </asp:DropDownList></td>
                                <td style="background-color: #3399cc" class="style7">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList7"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 18px; background-color: #3399cc">
                                    <asp:Label ID="Label21" runat="server" CssClass="ver11" Text="Roll No" Width="131px"></asp:Label></td>
                                <td style="background-color: #3399cc" class="style10">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                <td style="height: 18px; background-color: #3399cc; width: 174px;">
                                    <asp:TextBox ID="TextBox11" runat="server" BackColor="White" ForeColor="Black" 
                                        Width="130px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="height: 18px; background-color: #3399cc">
                                    <asp:Label ID="Label22" runat="server" Height="16px" Width="100%" BackColor="White"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="height: 18px; background-color: #3399cc; vertical-align: top; text-align: right;" colspan="6">
                                    <asp:Label ID="Label23" runat="server" 
                                        style="vertical-align: top; text-align: left; margin-bottom: 0px;" 
                                        Width="300px" Height="20px"></asp:Label>
                                    <asp:Button ID="Button1" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                        BorderWidth="1px" OnClick="Button1_Click" Style="background-image: url(image/nav_bg.gif);
                                        background-color: black" Text="Submit" Height="20px" />&nbsp;
                                    <asp:Button ID="Button2" runat="server" BorderColor="DimGray" BorderStyle="Outset"
                                        BorderWidth="1px" CausesValidation="False" Style="background-image: url(image/nav_bg.gif);
                                        background-color: black" Text="Cancel" PostBackUrl="~/login.aspx" 
                                        onclick="Button2_Click" Height="20px" /></td>
                            </tr>
                        </tbody>
                    </table>

</asp:Content>

