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
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save Patient" OnClick="btnSave_Click" />
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
                      <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                      <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                      <asp:BoundField DataField="Address" HeaderText="Address" />
                      <asp:BoundField DataField="City" HeaderText="City" />
                      <asp:BoundField DataField="State" HeaderText="State" />
                      <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("PatientID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
