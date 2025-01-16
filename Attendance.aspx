<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

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
		height:410px;
		width:530px;
           display: flex;
           flex-direction: column;
           margin-top: 70px;
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
           margin-top:5px;
	       height:40px;
	       width:110px;
	       border-radius:50px;
	       box-shadow: inset -4px -4px rgba(0, 0, 0, 0.6);
           color: white;
           font-weight: bold;
           font-size: 15px;
           padding: 8px;
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
    
    
        <table class="auto-style1">
             <th colspan=8><marquee><h2>!! ATTENDANCE !!</h2></marquee></th>
            <tr>
                <td>Date
                    <asp:TextBox ID="TextBox1" Class="box"  runat="server" ForeColor="#FF5050"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Student ID<asp:TextBox ID="TextBox2" Class="box"  runat="server" ReadOnly="true"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>Status<asp:TextBox ID="TextBox3"  Class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Remarks<asp:TextBox ID="TextBox4"  Class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        
        <colspan=4><asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click"  Class="submit"/>
        <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click"  Class="submit"/>
        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Class="submit"/>
        <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" Class="submit"/>
        <asp:Button ID="Button5" runat="server" Text="Allsearch" OnClick="Button5_Click"  Class="submit"/>
        <asp:Button ID="Button6" runat="server" Text="Psearch" OnClick="Button6_Click" Class="submit"/>
        <asp:LinkButton ID="LinkButton1" runat="server" Class="submit" PostBackUrl="~/RptAttendance.aspx">Report</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" Height="364px" Width="511px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="student_id" HeaderText="Student id" SortExpression="student_id" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [attendance]"></asp:SqlDataSource>
    </form>
</body>
</html>
