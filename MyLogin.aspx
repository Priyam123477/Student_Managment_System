<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyLogin.aspx.cs" Inherits="MyLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <center>
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
		height:300px;
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
           padding: 19px;
           cursor: pointer;
           background-image: linear-gradient(to right,darkblue,teal);
       }
tr{
		color:black;
		font-weight:bold;
		padding:12px;
		font-size:1.9rem;
		 text-align: none;
}
.container {
    display:flex ;
     justify-content: space-evenly;
    align-items:;
}
h1
{
	color:fff;
	text-align:center;
	font-size: 2rem;
	font-weight:bold;
	padding:15px;
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
            <tr>
                <h1>Login</h1>

                <td>Login ID<asp:TextBox ID="TextBox1" class="box" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Password<asp:TextBox ID="TextBox2" class="box" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <colspan=4><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="submit"/>
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" PostBackUrl="~/Register.aspx" class="submit" />
        
        </table>
    </form>
</body>
</html>
<script>
    function p() {
        window.open("Register.aspx", "_self")
    }
</script>