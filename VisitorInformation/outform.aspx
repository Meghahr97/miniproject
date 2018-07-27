<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="outform.aspx.cs" Inherits="VisitorInformation.outform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 275px;
        }
        .auto-style13 {
            width: 273px;
        }
        .auto-style14 {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="Visitor in"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtbyid" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:Button ID="btnsrchid" runat="server" OnClick="btnsrchid_Click" Text="Search by id" />
            </td>
            <td>
                <asp:Button ID="btnsrchname" runat="server" OnClick="btnsrchname_Click" Text="Search by name" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="be" runat="server" Text="click to sign out" OnClick="be_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
