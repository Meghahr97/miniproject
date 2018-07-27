<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="visitorinfo.aspx.cs" Inherits="VisitorInformation.visitorinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        border-style: solid;
        border-width: 1px;
        background-color: #808080;
    }
    .auto-style4 {
        width: 300px;
        height: 23px;
    }
    .auto-style5 {
        width: 409px;
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
    }
    .auto-style3 {
        width: 409px;
    }
        .auto-style11 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VISITOR INFORMATION</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="Must enter firstname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="must enter lastname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Text="Company"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcompany" ErrorMessage="company"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label4" runat="server" Text="visiting"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtvisiting" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtvisiting" ErrorMessage="must enter"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label9" runat="server" Text="ID Type"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlid" runat="server">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>pancard</asp:ListItem>
                <asp:ListItem>adharcard</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; ID NuM<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtid" ErrorMessage="must enter"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label6" runat="server" Text="Vehicle number"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtvehicle" runat="server" OnTextChanged="txtvehicle_TextChanged"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid" ControlToValidate="txtvehicle" ValidationExpression="^[A-Z]{2}\s[0-9]{2}\s[A-Z]{2}\s[0-9]{4}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="Txtcontact" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must enter in correct format" ControlToValidate="Txtcontact" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="must enter number" ControlToValidate="Txtcontact"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Label ID="Label8" runat="server" Text="purpose of visit"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtpurpose" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="give a reason" ControlToValidate="txtpurpose"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            <asp:Button ID="Btncancel" runat="server" Text="Cancel" OnClick="Btncancel_Click" />
        </td>
        <td class="auto-style3">
            <asp:Button ID="btnsave" runat="server" Text="save" OnClick="btnsave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
