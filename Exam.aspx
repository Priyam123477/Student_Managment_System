<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

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
		height:440px;
		width:480px;
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
	width:45%;
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
    
    
        <table class="auto-style1" >
             <th colspan=2><marquee><h2>!! EXAM DETAILS !!</h2></marquee></th>
            

            <tr>
                <td>Exam ID<asp:TextBox ID="TextBox1" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Exam Type Id<asp:TextBox ID="TextBox2" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Name<asp:TextBox ID="TextBox3" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Start Date<asp:TextBox ID="TextBox4" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
   
        <colspan=4><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New" class="submit"/>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" class="submit"/>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" class="submit" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Delete" class="submit"/>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Allsearch" class="submit"/>
        <asp:LinkButton ID="LinkButton1" runat="server" class="submit" PostBackUrl="~/RptExam.aspx">Report</asp:LinkButton>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Psearch" class="submit"/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="271px" Width="549px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="exam_id" HeaderText="Exam Id" SortExpression="exam_id" />
                <asp:BoundField DataField="exam_type_id" HeaderText="Exam Type Id" SortExpression="exam_type_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="start_date" HeaderText="Start Date" SortExpression="start_date" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam]"></asp:SqlDataSource>
    </form>
</body>
</html>
