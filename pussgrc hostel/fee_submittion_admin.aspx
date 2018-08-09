<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="fee_submittion_admin.aspx.cs" Inherits="fee_submittion_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr>
            <td style="width:200px; height: 23px;">
                </td>
            <td style="width:200px; height: 23px;">
                </td>
            <td style="width:200px; height: 23px;">
                </td>
            <td style="width:200px; height: 23px;">
                </td>
            <td style="width:200px; height: 23px;">
                </td>
            <td style="width:200px; height: 23px;">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Enter The Student Id</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" causesValidation="false" onclick="LinkButton1_Click">Check</asp:LinkButton>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rkrd" runat="server" ControlToValidate="TextBox9" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Semester</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="*"></asp:RequiredFieldValidator>
        
            </td>
            <td>
                Student Name :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
        
             </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Course name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        
            </td>
            <td>
                Total Amount:</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px">
                </td>
            <td style="height: 26px">
                Enter The Roll no.</td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
        
            </td>
            <td style="height: 26px">
                Paying Amount:</td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox7" runat="server" ontextchanged="TextBox7_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 26px">
       <asp:RequiredFieldValidator ID="RequiredFieldr2" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator>

                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Hostel Fee</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
       <asp:RequiredFieldValidator ID="or2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
        
            </td>
            <td>
                Due Amount:</td>
            <td>
                <asp:Label ID="Label8" runat="server" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Mess Fee</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
       <asp:RequiredFieldValidator ID="RequiredFieldVali2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                
            </td>
            <td>
                Paying Mode</td>
            <td>
                &nbsp;<asp:DropDownList ID="DropDownList7" runat="server" 
                    onselectedindexchanged="DropDownList7_SelectedIndexChanged1" >
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Pay sleep</asp:ListItem>
                    <asp:ListItem>DD</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Miscelliounas Fee</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
       <asp:RequiredFieldValidator ID="Requiredalidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
       
            </td>
            <td>
                DD No./Sleep No.</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
       <asp:RequiredFieldValidator ID="RequireieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                Paying Date of DD/Sleep</td>
            <td colspan="2" rowspan="3">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                    Text="" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


