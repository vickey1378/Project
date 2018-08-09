<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="see_complain.aspx.cs" Inherits="see_complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <td style="width:80%; height:400px; vertical-align: top; text-align: left;">
                    <asp:Label ID="Label4" runat="server" CssClass="ver11" Style="vertical-align: top;
                        background-color: #66ff66; text-align: center" Width="100%" Height="20px"><center>REGISTERED COMPLAIN</center></asp:Label>&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                   
      <center>
          <asp:GridView ID="grd" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="complain_sub">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%#Bind("complain_sub") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="complain_msg">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%#Bind("complain_msg") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="complai_date">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("complain_date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                    </Columns>
                    </asp:GridView>              
    </center>
                    
</asp:Content>

