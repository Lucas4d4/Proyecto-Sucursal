<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/Combo1.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="tableMod">
                <tr>
                    <td class="tdMod">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx" CssClass="ulMod">Agregar Sucursal</asp:HyperLink></td>
                    <td class="tdMod">
                        <asp:HyperLink ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx" CssClass="ulMod">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="tdMod">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx" CssClass="ulMod">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            
            <asp:Label ID="lblGrupo" runat="server"  Text="Agregar Sucursal" CssClass="labelMod"></asp:Label>
            
            <table class="tableMod2">
                    <tr>
                    <td class="tdMod2">
                        <asp:Label ID="lblNombreSuc" runat="server" Text="Nombre sucursal:" CssClass="labelMod2"></asp:Label>
                    </td>
                    <td class="tdMod2">
                        <asp:TextBox CssClass="textbox1" ID="txtNombre" runat="server" Width="492px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="RequiredError" ID="rfvNombre" runat="server" ControlToValidate="txtNombre" EnableClientScript="False" ErrorMessage="RequiredFieldValidator">No se agregó un nombre de sucursal</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdMod2">
                        <asp:Label ID="lblDescripcionS" runat="server" Text="Descripción:" CssClass="labelMod2"></asp:Label>
                    </td>
                    <td class="tdMod2">
                        <asp:TextBox CssClass="textbox1" ID="txtDescripcion" runat="server" Width="492px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="RequiredError" ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" EnableClientScript="False">No se agregó una descripción</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdMod2">
                        <asp:Label ID="lblProvinciaS" runat="server" Text="Provincia:" CssClass="labelMod2"></asp:Label>
                    </td>
                    <td class="tdMod2">
                        <asp:DropDownList CssClass="textbox1" ID="ddlProvinciaS" runat="server" Width="499px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator CssClass="RequiredError" ID="rfvPovincias" runat="server" ControlToValidate="ddlProvinciaS">No se seleccionó una provincia</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdMod2">
                        <asp:Label ID="lblDireccionS" runat="server" Text="Dirección:" CssClass="labelMod2"></asp:Label>
                    </td>
                    <td class="tdMod2">
                        <asp:TextBox CssClass="textbox1" ID="txtDireccion" runat="server" Width="492px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="RequiredError" ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" EnableClientScript="False" ErrorMessage="RequiredFieldValidator">No se agregó una dirección</asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </table>
            <table class="tableMod3">
                <tr>
                    <td colspan="1" class="tdMod3">
                        <asp:Label CssClass="labelMod3" ID="lblError" runat="server" ForeColor="Gold"></asp:Label>
                        <asp:Label CssClass="labelMod3" ID="lblConfirmar" runat="server" ForeColor="GreenYellow"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdMod3">
                        <asp:Button CssClass="btnMod" ID="btnAceptar" runat="server" Text="Guardar Sucursal" OnClick="btnAceptar_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
