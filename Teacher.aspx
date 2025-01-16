﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
#bgpic
{
  padding: 0px;
  #background:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.2)),url("hotell4.jpeg");
  background: url("hotell4.jpeg");
  background-repeat: no-repeat;
  background-size: cover;
}
body {
		background-color:rgba(300,80,0,0.3);
		opacity: 0.9;
		border-radius: 10px;
		height=240px;
    background-image:linear-gradient(rgb(110, 198, 201),rgb(220, 226, 193),rgba(203, 142, 241, 0.91));
		#box-shadow: 0 3px 2px rgba(0,0,0,0.4);
		background-size: cover;
	}


.form {
		
		opacity: 0.9;
		border-radius: 10px;
		height:690px;
		width:450px;
           display: flex;
           flex-direction: column;
           margin-top: 80px;
           box-shadow: 0 12px 13px rgba(0, 0, 100, 0.6);
           border-radius: 20px;
           background-image: linear-gradient(rgb(110, 198, 201),rgb(220, 226, 193),rgba(203, 142, 241, 0.91));
           margin-left: auto;
           margin-right: auto;
           margin-bottom: auto;
       }

.box
{
	padding:16px;
	margin:5px;
	width:50%;
	border:none;
	outline:none;
	border-radius:20px;
	background-color:rgb(255, 255, 255);
	box-shadow:inset -4px -4px  rgba(0,0,0,0.5);
	color:blue;
	font-size:1rem;
	display: inline-block;
	margin: 4px 4px;
	text-align: center;
}
.submit
{
	   border-style: none;
           border-color: inherit;
           border-width: medium;
           margin-top:10px;
	       height:50px;
	       width:110px;
	       border-radius:50px;
	       box-shadow: inset -4px -4px rgba(0, 0, 0, 0.6);
           color: white;
           font-weight: bold;
           font-size: 17px;
           padding: 16px;
           cursor: pointer;
           background-image: linear-gradient(to right,darkblue,teal);
       }
tr{
		color:black;
		font-weight:bold;
		padding:6px;
		font-size:1.9rem;
		 text-align: none;
}
.container {
    display:flex ;
     justify-content: space-evenly;
    align-items:;
}
h2
{
	color:fff;
	text-align:center;
	font-size: 2rem;
	font-weight:bold;
	padding:6px;
	#border-bottom:6px solid  rgba(255,255,255,0.5);
	box-shadow: 0 10px 13px rgba(0,0,0,0.5);
	background-image:linear-gradient(to right,darkblue,teal);	
	border-radius:15px;
	margin:4px
}

</style>
</head>
<body>
    <form id="form1" runat="server" class="form">
    <div>
    
        <table class="auto-style1">
             <th colspan=2><marquee><h2>!! TEACHER DETAILS!!</h2></marquee></th>
            <tr>
                <td>Teacher ID<asp:TextBox ID="TextBox1" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Fname<asp:TextBox ID="TextBox2" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Lname<asp:TextBox ID="TextBox3" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Dob<asp:TextBox ID="TextBox4" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Phone<asp:TextBox ID="TextBox5" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Mobile<asp:TextBox ID="TextBox6"  class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Status<asp:TextBox ID="TextBox7" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address<asp:TextBox ID="TextBox8" class="box" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    
    
        <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" class="submit"/>
        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" class="submit"/>
        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" class="submit"/>
        <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" class="submit"/>
        <asp:Button ID="Button5" runat="server" Text="Allsearch" OnClick="Button5_Click" class="submit"/>
        <asp:LinkButton ID="LinkButton1" runat="server" class="submit" PostBackUrl="~/Rptteacher.aspx">Report</asp:LinkButton>
        <asp:Button ID="Button6" runat="server" Text="Psearch" OnClick="Button6_Click" class="submit"/>
        <asp:GridView ID="GridView1" runat="server" Height="288px" Width="596px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="teacher_id" HeaderText="Teacher Id" SortExpression="teacher_id" />
                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="Dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [teacher]"></asp:SqlDataSource>
    </form>
</body>
</html>