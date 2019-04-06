<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_PrvKolok_2017._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px; height: 22px">Корисничко име:</td>
            <td style="width: 210px; height: 22px">
                <asp:TextBox ID="txtIme" runat="server" OnTextChanged="txtIme_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="validatorIme" runat="server" ControlToValidate="txtIme" ErrorMessage="Внесете име" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIme" ErrorMessage="Треба да содржи специјален знак" ForeColor="Red" ValidationExpression="\w*(-|!|\^){1}\w*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 207px">Лозинка</td>
            <td style="width: 210px">
                <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="validateLozinka" runat="server" ControlToValidate="txtLozinka" ErrorMessage="Внесете лозинка" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 207px">Email:</td>
            <td style="width: 210px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="validateLozinka0" runat="server" ControlToValidate="txtEmail" ErrorMessage="Внесете емаил" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">
                <asp:Button ID="btnNajaviSe" runat="server" OnClick="btnNajaviSe_Click" Text="Најави се" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px; height: 20px"></td>
            <td style="width: 210px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">
                <asp:Image ID="Image1" runat="server" Height="138px" ImageUrl="~/slikicka/635909140777574051-183397971_the-movies-logo-1[1].gif" Visible="False" Width="210px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="lstZnarovi" runat="server" OnSelectedIndexChanged="lstZnarovi_SelectedIndexChanged" Visible="False" AutoPostBack="True">
                    <asp:ListItem>Драма</asp:ListItem>
                    <asp:ListItem>Комедија</asp:ListItem>
                    <asp:ListItem>Акција</asp:ListItem>
                </asp:ListBox>
            </td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px; height: 20px"></td>
            <td style="width: 210px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 207px">
                <asp:CheckBoxList ID="chkFilmovi" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="chkFilmovi_SelectedIndexChanged">
                </asp:CheckBoxList>
            </td>
            <td style="width: 210px">
                <asp:TextBox ID="txtKolicina1" runat="server" Visible="False" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">
                <asp:TextBox ID="txtKolicina2" runat="server" Visible="False" AutoPostBack="True" style="margin-left: 16"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">
                <asp:TextBox ID="txtKolicina3" runat="server" Visible="False" AutoPostBack="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">
                <asp:Button ID="btnKupi" runat="server" Text="Купи" Visible="False" OnClick="btnKupi_Click" />
            </td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">
                <asp:Label ID="lblCena" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 207px">&nbsp;</td>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
