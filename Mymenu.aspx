<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mymenu.aspx.cs" Inherits="Mymenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FF3399" BorderColor="Red" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Student" Value="Student">
                    <asp:MenuItem NavigateUrl="~/Student.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptStudent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Classroom" Value="Classroom">
                    <asp:MenuItem NavigateUrl="~/Classroom.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptClassroom.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Grade" Value="Grade">
                    <asp:MenuItem NavigateUrl="~/Grade.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptGrade.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Course" Value="Course">
                    <asp:MenuItem NavigateUrl="~/Course.aspx" Text="Open" Value="Open">
                        <asp:MenuItem NavigateUrl="~/RptCourse.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Teacher" Value="Teacher">
                    <asp:MenuItem NavigateUrl="~/Teacher.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptteacher.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Parent" Value="Parent">
                    <asp:MenuItem NavigateUrl="~/Parent.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptParent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Attendance" Value="Attendance">
                    <asp:MenuItem NavigateUrl="~/Attendance.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptAttendance.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="ClassRoomStudent" Value="ClassRoomStudent" NavigateUrl="~/RptClassRoomStudent.aspx">
                    <asp:MenuItem NavigateUrl="~/ClassRoomStudent.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptClassRoomStudent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam" Value="Exam">
                    <asp:MenuItem NavigateUrl="~/Exam.aspx" Text="Open" Value="Open">
                        <asp:MenuItem NavigateUrl="~/RptExam.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="ExamType" Value="ExamType">
                    <asp:MenuItem NavigateUrl="~/Examtype.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptExamtype.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="ExamResult" Value="ExamResult">
                    <asp:MenuItem NavigateUrl="~/Examresult.aspx" Text="Open" Value="Open">
                        <asp:MenuItem NavigateUrl="~/RptExamresult.aspx" Text="Report" Value="Report"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>
</body>
</html>
