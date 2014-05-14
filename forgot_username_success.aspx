<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="forgot_username_success, App_Web_rpexcx5w" %>

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
                    <br />
                        <asp:Label ID="Label_success" runat="server" Font-Bold="True" ForeColor="Green" Text="Username successfully send to your email."></asp:Label>
                        <br />
                </div>
                </div>
        </asp:Panel>
    </div>
</asp:Content>

