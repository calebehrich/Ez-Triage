<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientEncounter.aspx.cs" Inherits="EzTriage.PatientEncounter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfPatientID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save Patient" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="Patient" runat="server" AutoGenerateColumns="false">
                  <Columns>
                      <asp:BoundField DataField="First Name" HeaderText="First Name" />
                      <asp:BoundField DataField="Last Name" HeaderText="Last Name" />
                      <asp:BoundField DataField="Address" HeaderText="Address" />
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("PatientID") %>'>View</asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
