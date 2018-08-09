<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="upload_notice.aspx.cs" Inherits="upload_notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             
        <center><table style="width: 100%">
       <tr>
            <td style="width:200px">
                &nbsp;</td>
            <td style="width:200px">
                &nbsp;</td>
        </tr>
        <tr align="right">
           <td style="width:200px">
                Subject Of Notice</td>
            <td>
                <asp:TextBox ID="TextBox1" Width="100%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 12px">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
             ErrorMessage="*"></asp:RequiredFieldValidator></td>
             <td style="width:83px">
                 &nbsp; </td>
        </tr>
       <tr align="right">
            <td style="width:200px">
                Msg Of Notice</td>
            <td>
                <asp:TextBox ID="TextBox2" Width="100%" Height="300px" runat="server"></asp:TextBox>
            </td>
           <td>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
               ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
             <td style="width:12px">
                 &nbsp;</td>
        </tr>
        <tr align="left">
            <td style="width:200px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel"  CausesValidation="False" PostBackUrl="~/admin_welcome.aspx" OnClick="Button2_Click" />
            </td>
             <td style="width:12px">
                 &nbsp;</td>
        </tr>
        <tr>
            <td style="width:200px; height: 48px;">
                </td>
            <td style="height: 48px">
                &nbsp;</td>
                 <td style="width:12px; height: 48px;">
                </td>
        </tr>
    </table></center>
</asp:Content>

