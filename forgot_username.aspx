<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="forgot_username, App_Web_rpexcx5w" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Forgot Username</h1><br /><br />
                <div class="information">
					    <p>
                            If you have forgotten your username, then give us your email address. We will send you a username.
                        </p>
                    <br /><br />
                        <asp:Label ID="Label_success" runat="server"></asp:Label>
                        <br />
                        <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label_email" runat="server" CssClass="tbl_header" Text="Email"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
                                <br />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Please enter your email." Font-Bold="True" ForeColor="Red" ValidationGroup="forgot_password"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Please enter your valid email." Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="forgot_password"></asp:RegularExpressionValidator>
                                <br />
                                <asp:CustomValidator ID="CustomValidator_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="This user is not registered with us." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_email_ServerValidate" ValidationGroup="forgot_password"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">
                                <br />
                                <asp:Button ID="Button_send" runat="server" CssClass="btn_save" Text="Send" OnClick="Button_send_Click" ValidationGroup="forgot_password" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button_back" runat="server" CssClass="btn_back" Text="Back" OnClick="Button_back_Click" />
                                <br />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </div>
                </div>
        </asp:Panel>
    </div>
</asp:Content>

