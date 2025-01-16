<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecialSrch.aspx.cs" Inherits="SpecialSrch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #FF99CC;
            background-color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Attendance"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList runat="server">
                        <asp:ListItem>date</asp:ListItem>
                        <asp:ListItem>student_id</asp:ListItem>
                        <asp:ListItem>status</asp:ListItem>
                        <asp:ListItem>remarks</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="ClassRoom"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="ClassRoomStudent"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Exam"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Examresult"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Examtype"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList6" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList8" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Grade"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList7" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Parent"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList9" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Student"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList10" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Teacher"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList11" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
