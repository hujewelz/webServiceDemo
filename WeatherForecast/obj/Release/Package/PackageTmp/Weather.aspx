<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="WeatherForecast.Weather" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>天气预报</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header" ></div>
         <div class="content">
            <table style="height: 95px" >
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="请输入城市:"></asp:Label></td>
                <td><asp:TextBox ID="City" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="SearchBtn" runat="server" Text="查询" OnClick="SearchBtn_Click" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="天气概况:"></asp:Label></td>
                <td><asp:Label ID="WeatherGeneral" runat="server"></asp:Label></td>
                <td><asp:Image ID="WeatherImage" runat="server" /></td>
            </tr>
            <tr><td><asp:Label ID="Label3" runat="server" Text="天气详情:"></asp:Label></td>
                <td colspan="2">
                <asp:TextBox ID="WeatherDesc" runat="server" Height="50px" Width="233px" Rows="10"></asp:TextBox>
                </td>
            </tr>
        </table>
       </div>
    </form>
</body>
</html>
