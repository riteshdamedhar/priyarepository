<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="change_forgot_password, App_Web_tpvrjkp3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 180px;
        }
        .auto-style3 {
            width: 352px;
        }
        .auto-style4 {
            width: 180px;
            height: 38px;
        }
        .auto-style5 {
            width: 352px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Change Password</h1><br /><br />
                <div class="information">

                    <asp:Panel ID="Panel_change_forgot_password" runat="server" Height="100%" Width="100%">
                        <asp:Label ID="Label_success" runat="server"></asp:Label>
                        <br />
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_new_password" runat="server" CssClass="tbl_header" Text="New Password"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_new_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_new_password" runat="server" ControlToValidate="TextBox_new_password" ErrorMessage="Please enter your new password." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_new_password_length" runat="server" ControlToValidate="TextBox_new_password" ErrorMessage="Your password must be at least 6 characters." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_new_password_length_ServerValidate" ValidationGroup="change_password"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_confirm_new_password" runat="server" CssClass="tbl_header" Text="Confirm New Password"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox_confirm_new_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style6">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_confirm_new_password" runat="server" ControlToValidate="TextBox_confirm_new_password" ErrorMessage="Please enter your confirm new password." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator_password_match" runat="server" ControlToCompare="TextBox_new_password" ControlToValidate="TextBox_confirm_new_password" ErrorMessage="Your password does not match." Font-Bold="True" ForeColor="Red" ValueToCompare="change_password"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <br />
                                    <asp:Button ID="Button_change_password" runat="server" CssClass="btn_change_profile_image" OnClick="Button_change_password_Click" Text="Change My Password" ValidationGroup="change_password" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>

                </div>
                </div>
        </asp:Panel>
    </div>
</asp:Content>

