<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HloP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 385px;
        }
        .auto-style2 {
            width: 385px;
            height: 387px;
        }
        .auto-style3 {
            height: 387px;
        }
        .auto-style4 {
            margin-right: 0px;
        }
        .auto-style5 {
            height: 387px;
            width: 149px;
        }
        .auto-style6 {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Маршруты города Челябинска</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style4" DataKeyNames="Route_ID" DataSourceID="SqlDataSource1" Height="295px" Width="365px">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="Route_ID" HeaderText="ID маршрута" InsertVisible="False" ReadOnly="True" SortExpression="Route_ID" />
                            <asp:BoundField DataField="Type" HeaderText="Тип" SortExpression="Type" />
                            <asp:BoundField DataField="Number" HeaderText="Номер" SortExpression="Number" />
                            <asp:BoundField DataField="Comment" HeaderText="Маршрут" SortExpression="Comment" />
                        </Columns>
                        <SelectedRowStyle BackColor="#0066CC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TransportConnectionString %>" InsertCommand="INSERT INTO Route(Type, [Number], Comment) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:TransportConnectionString.ProviderName %>" SelectCommand="SELECT [Route_ID], [Type], [Number], [Comment] FROM [Route]" DeleteCommand="DELETE FROM Route WHERE (Route_ID = ?)" UpdateCommand="UPDATE Route SET Type = ?, [Number] = ?, Comment = ? WHERE (Route_ID = ?)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="?" PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="20px" Text="Добавить" Width="80px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="20px" Text="Изменить" Width="80px" OnClick="Button2_Click" />
                    <br />
                    <br />
                    <br />
&nbsp;
                    <asp:Button ID="Button3" runat="server" Height="20px" Text="Удалить" Width="80px" OnClick="Button3_Click1" />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">&nbsp;
                    <br />
&nbsp; Тип транспортного средства<br />
&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="200px">
                        <asp:ListItem>Автобус</asp:ListItem>
                        <asp:ListItem>Троллейбус</asp:ListItem>
                        <asp:ListItem>Трамвай</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
&nbsp;Номер<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <br />
&nbsp;Маршрут<br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button5" runat="server" Height="20px" Text="Ок" Width="80px" OnClick="Button5_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Height="20px" Text="Отмена" Width="80px" OnClick="Button4_Click" />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
