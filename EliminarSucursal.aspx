<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="CSS/Combo1.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="tableMod">
                <tr>
                    <td class="tdMod">
                        <asp:HyperLink CssClass="ulMod" ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="tdMod">
                        <asp:HyperLink CssClass="ulMod" ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="tdMod">
                        <asp:HyperLink CssClass="ulMod" ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        
            <asp:Label CssClass="labelMod" ID="lblEliminarS" runat="server"  Text="Eliminar sucursales"></asp:Label>
        
        <table class="tableMod6">
            <tr>
                <td>
                    <asp:Label CssClass="labelMod2" ID="lblIDEliminar" runat="server" Text="Ingrese ID sucursal:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox CssClass="textbox1" ID="txtEliminarID" runat="server" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32)"></asp:TextBox>
                 </td>
                <td>
                    <asp:Button CssClass="btnEliminar" ID="btnEliminarID" runat="server" Text="Eliminar" OnClick="btnEliminarID_Click" />
                    <asp:RegularExpressionValidator  ID="revEliminar" runat="server" ControlToValidate="txtEliminarID" ErrorMessage="Solo puede ingresar numeros" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator  ID="rfvEliminar" runat="server" ControlToValidate="txtEliminarID" ErrorMessage="Debe ingresar algun valor">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:ValidationSummary CssClass="validationMod2" ID="vsEliminar" runat="server"/>
                </td>
            </tr>
        </table>
            <asp:Label CssClass="labelMod5" ID="Label1" runat="server"></asp:Label>
</form>
</body>
</html>
