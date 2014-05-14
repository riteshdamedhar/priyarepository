<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="contact_success, App_Web_fofqpemn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Contact Online Test Application</h1><br /><br />
                <div class="information">
                        <asp:Label ID="Label_success" runat="server" Font-Bold="True" ForeColor="Green" Text="Thank you for your feedback."></asp:Label>
                        <br />
                </div>
                </div>
        </asp:Panel>
    </div>
</asp:Content>

