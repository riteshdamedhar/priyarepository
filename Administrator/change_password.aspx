<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_administrator.master" autoeventwireup="true" inherits="Administrator_change_password, App_Web_wwiuweka" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Change Password</h1><br /><br />
                <div class="information">
                    
                    <br />
                    <asp:Label ID="Label_successfull_change_password" runat="server"></asp:Label>
                    
                    <asp:Panel ID="Panel_change_password" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_current_password" runat="server" CssClass="tbl_header" Text="Current Password"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox_current_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_current_password" runat="server" ControlToValidate="TextBox_current_password" ErrorMessage="Please enter your current password." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_current_password_match" runat="server" ControlToValidate="TextBox_current_password" ErrorMessage="Your current password does not match." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_current_password_match_ServerValidate" ValidationGroup="change_password"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_new_password" runat="server" CssClass="tbl_header" Text="New Password"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox_new_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_new_password" runat="server" ControlToValidate="TextBox_new_password" ErrorMessage="Please enter your new password." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_password_length" runat="server" ControlToValidate="TextBox_new_password" ErrorMessage="Your password must be at least 6 characters." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_password_length_ServerValidate" ValidationGroup="change_password"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_confirm_new_password" runat="server" CssClass="tbl_header" Text="Confirm  New Password"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="TextBox_confirm_new_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_confirm_new_password" runat="server" ControlToValidate="TextBox_confirm_new_password" ErrorMessage="Please enter your confirm new password." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator_confirm_password" runat="server" ControlToCompare="TextBox_new_password" ControlToValidate="TextBox_confirm_new_password" ErrorMessage="Your password does not match." Font-Bold="True" ForeColor="Red" ValidationGroup="change_password"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <asp:Button ID="btn_change" runat="server" CssClass="btn_save" Text="Change" OnClick="btn_change_Click" ValidationGroup="change_password" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_back" runat="server" CssClass="btn_back" Text="Back" OnClick="btn_back_Click" />
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

