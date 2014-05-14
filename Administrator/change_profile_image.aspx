<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_administrator.master" autoeventwireup="true" inherits="Administrator_change_profile_image, App_Web_sw5gkuqa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Change Profile Image</h1><br /><br />
                <div class="information">
                    
                    <asp:Panel ID="Panel_change_profile_image" runat="server" Width="100%">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label_current_password" runat="server" CssClass="tbl_header" Text="Your Profile Image"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <asp:Image ID="Image_profile_image" runat="server" Height="200px" Width="250px" />
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label_current_password0" runat="server" CssClass="tbl_header" Text="Change Your Profile Image"></asp:Label>
                                </td>
                                <td class="auto-style8">
                                    <br />
                                    <br />
                                    <br />
                                    <asp:FileUpload ID="FileUpload_profile_image" runat="server" />
                                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="(Max size 5 MB)"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label_file_upload" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style8">
                                    <br />
                                    <asp:Button ID="btn_change_profile_image" runat="server" CssClass="btn_change_profile_image" OnClick="btn_change_profile_image_Click" Text="Change My Profile Image" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
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

