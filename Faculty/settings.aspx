<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_faculty.master" autoeventwireup="true" inherits="Faculty_settings, App_Web_xt512ofr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Settings</h1><br /><br />
                <div class="student_settings">
                    <ul>
                        <li>
                            <a href="change_password.aspx">Change Password</a>
                        </li>
                        <li>
                            <a href="change_profile_image.aspx">Change Profile Image</a>
                        </li>
                        <li>
                            <a href="account_settings.aspx">Account Settings</a>
                        </li>
                        <li>
                            <a href="add_materials.aspx">Add Materials</a>
                        </li>
                    </ul>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

