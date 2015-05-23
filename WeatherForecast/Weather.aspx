<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="WeatherForecast.Weather" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>天气预报</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width: 91px;
            height: 124px;
        }
        .auto-style3 {
            width: 91px;
            height: 35px;
        }
        .auto-style4 {
            width: 208px;
            height: 35px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            width: 91px;
            height: 32px;
        }
        .auto-style7 {
            width: 208px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            height: 80px;
        }
        .auto-style10 {
            height: 80px;
            width: 91px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="content" >
            <table style=" width: 381px;" >
            <tr>
                <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="请输入城市:" Font-Names="黑体"></asp:Label></td>
                <td class="auto-style4"><asp:TextBox ID="City" runat="server" Width="211px"></asp:TextBox></td>
                <td class="auto-style5"><asp:Button ID="SearchBtn" runat="server" Text="查询" OnClick="SearchBtn_Click" /></td>
            </tr>
            <tr>
                <td class="auto-style6"><asp:Label ID="Label2" runat="server" Text="天气概况:" Font-Names="黑体"></asp:Label></td>
                <td class="auto-style7"><asp:Label ID="WeatherGeneral" runat="server"></asp:Label></td>
                <td class="auto-style8"><asp:Image ID="WeatherImage" runat="server" /></td>
            </tr>
            <tr><td class="auto-style10"><asp:Label ID="Label3" runat="server" Text="天气详情:" Font-Names="黑体"></asp:Label></td>
                <td colspan="2" class="auto-style9">
                <asp:TextBox ID="WeatherDesc"  runat="server" Height="50px" Width="264px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
                <tr><td colspan="3"><a href="https://github.com/hujewelz/webServiceDemo" style="float:right; font-size: 15px; font-family: 宋体" >项目地址</a></td></tr>
        </table>
        </div>
        
     
    </form>
</body>
</html>
