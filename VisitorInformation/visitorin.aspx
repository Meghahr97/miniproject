<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="visitorin.aspx.cs" Inherits="VisitorInformation.visitorin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 204px;
        }
        .auto-style13 {
            width: 420px;
        }
        .auto-style14 {
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Visitor in"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="txtsearchid" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:Button ID="btnsrchid" runat="server" Text="Search by ID" />
            </td>
            <td>
                <asp:Button ID="btnsrchname" runat="server" Text="search ny name" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server">
                    
                </asp:GridView>
</asp:Content>
