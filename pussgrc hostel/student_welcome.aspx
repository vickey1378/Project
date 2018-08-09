<%@ Page Title="" Language="C#" MasterPageFile="~/student_master.master" AutoEventWireup="true" CodeFile="student_welcome.aspx.cs" Inherits="student_welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center> <td style="width:80%; height:400px; vertical-align: top; text-align: left;">
                    <asp:Label ID="Label4" runat="server" CssClass="ver11" Style="vertical-align: top;
                        background-color: #66ff66; text-align: center" Width="100%"></asp:Label>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" Style="left: -7px; vertical-align: top;
                        position: relative; top: 35px; text-align: left; width: 584px; height: 360px; margin-left: 30px;">
                        <Fields>
                            <asp:BoundField DataField="f_name" HeaderText="First_Name" SortExpression="f_name" />
                            <asp:BoundField DataField="l_name" HeaderText="Last_Name" SortExpression="l_name" />
                            <asp:BoundField DataField="dad_name" HeaderText="Father Name" SortExpression="dad_name" />
                            <asp:BoundField DataField="mo_name" HeaderText="Mother Name" SortExpression="mo_name" />
                            <asp:BoundField DataField="mob_no" HeaderText="Mobile No" SortExpression="mob_no" />
                            <asp:BoundField DataField="phone_no" HeaderText="Phone No" SortExpression="phone_no" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                            <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
                            <asp:BoundField DataField="login_id" HeaderText="Login_ID" ReadOnly="True" SortExpression="login_id" />
                            <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                            <asp:BoundField DataField="course_dure" HeaderText="Duration" SortExpression="course_dure" />
                            <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
                            <asp:BoundField DataField="sec" HeaderText="Section" SortExpression="sec" />
                            <asp:BoundField DataField="roll_no" HeaderText="Roll No" SortExpression="roll_no" />
                            <asp:BoundField DataField="c_date" HeaderText="Date" SortExpression="c_date" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                   </td></center>

</asp:Content>

