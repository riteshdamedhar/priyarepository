<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="login, App_Web_idnitzbr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Login</h1><br /><br />
                <div class="information">
                    <asp:Label ID="Label_login_as" runat="server" CssClass="form_label" Text="Login As:"></asp:Label>
                    <asp:DropDownList ID="DropDownList_login_as" runat="server" CssClass="dropdownlist">
                        <asp:ListItem>Administrator</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                        <asp:ListItem Selected="True">Student</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_username" runat="server" Text="Username:" CssClass="form_label"></asp:Label>
                    <asp:TextBox ID="txtbox_username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfieldvalid_username" runat="server" ControlToValidate="txtbox_username" ErrorMessage="Please enter your username." Font-Bold="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl_username_exist" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <br />

                    <asp:Label ID="lbl_password" runat="server" Text="Password:" CssClass="form_label"></asp:Label>
                    <asp:TextBox ID="txtbox_password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqfieldvalid_password" runat="server" ControlToValidate="txtbox_password" ErrorMessage="Please enter your password." Font-Bold="True" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl_password_incorrect" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label ID="lbl_block" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <br />

                    <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn_login" onclick="btn_login_Click" ValidationGroup="login" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_registration" runat="server" CssClass="btn_change_profile_image" OnClick="Button_registration_Click" Text="Registration" />
                    <br />
                    <br /><br />

                    <div class="forgot">
                        <div>
                            <p>
                                <a href="forgot_username.aspx">Forgot Username?</a>

                            </p><br /><br />
                            <p>
                                <a href="forgot_password.aspx">Forgot Password?</a>

                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

