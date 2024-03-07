<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/Combo1.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <table class="tableMod">
        <tr>
            <td class="tdMod">
    <asp:HyperLink CssClass="ulMod" ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            </td>
            <td class="tdMod">
    <asp:HyperLink CssClass="ulMod" ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
            </td>
            <td class="tdMod">
    <asp:HyperLink CssClass="ulMod" ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
            </td>
        </tr>
    </table>
        <br />
        <asp:Label CssClass="labelMod" ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Listado de Sucursales"></asp:Label>
        <br />
        <br />
        <table class="tableMod4">
            <tr>
                <td class="tdMod3"><label class="labelMod2">Busqueda ingrese ID Sucursal:</label></td>
                <td class="tdMod3">
                    <asp:TextBox CssClass="textbox1" ID="txtID" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVtxtID" runat="server" ControlToValidate="txtID" EnableClientScript="False" ErrorMessage="Debe ingresar un ID" ValidationGroup="ValFiltrar">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REVtxtID" runat="server" ControlToValidate="txtID" EnableClientScript="False" ErrorMessage="Ingrese un numero de ID valido" ValidationExpression="\d+" ValidationGroup="ValFiltrar">*</asp:RegularExpressionValidator>
                </td>
                <td class="tdMod3">
                    <asp:Button CssClass="btnMod" ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" ValidationGroup="ValFiltrar" />
                </td>
                <td class="tdMod3">
                    <asp:Button CssClass="btnMod" ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar Todos" />
                </td>
            </tr>
        </table>
        <asp:Label CssClass="labelMod4" ID="lblError" runat="server" ForeColor="Gold"></asp:Label>
        <br />
        <asp:ValidationSummary CssClass="validationMod" ForeColor="Gold" ID="ValidationSummary1" runat="server" ValidationGroup="ValFiltrar" />
        <br />
        <asp:GridView CssClass="tableMod5" ID="gvSucursales" runat="server" AllowPaging="True" PagerSettings-FirstPageText="First" PagerSettings-LastPageText="Last" PagerSettings-PageButtonCount="5" PagerStyle-Width="50%" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="6">
        </asp:GridView>
    </form>
</body>
</html>
