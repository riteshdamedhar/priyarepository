<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_faculty.master" autoeventwireup="true" inherits="Faculty_account_settings, App_Web_dop0hbet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Account Settings</h1><br /><br />
                <div class="information">
                    
                    <br />
                    <asp:Label ID="Label_successfull_update_account" runat="server"></asp:Label>
                    
                    <asp:Panel ID="Panel_account_settings" runat="server">
                        <% Bussineslayer bl = new Bussineslayer();
                           Student_Data user_data = bl.getuserdata(Convert.ToInt32(Session["user_id"]));
                        %>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_first_name" runat="server" CssClass="tbl_header" Text="First Name"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_first_name" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_first_name" runat="server" ControlToValidate="TextBox_first_name" ErrorMessage="Please enter your first name." Font-Bold="True" ForeColor="Red" ValidationGroup="account_settings"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionValid_firstname_space" runat="server" ControlToValidate="TextBox_first_name" ErrorMessage="Your first name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+" ValidationGroup="account_settings"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_first_name_alphabets" runat="server" ControlToValidate="TextBox_first_name" ErrorMessage="Your first name can only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$" ValidationGroup="account_settings"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_last_name" runat="server" CssClass="tbl_header" Text="Last Name"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_last_name" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_last_name" runat="server" ControlToValidate="TextBox_last_name" ErrorMessage="Please enter your last name." Font-Bold="True" ForeColor="Red" ValidationGroup="account_settings"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalid_lastname_space" runat="server" ControlToValidate="TextBox_last_name" ErrorMessage="Your last name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+" ValidationGroup="account_settings"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_last_name_alphabets0" runat="server" ControlToValidate="TextBox_last_name" ErrorMessage="Your last name can only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$" ValidationGroup="account_settings"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_email" runat="server" CssClass="tbl_header" Text="Email"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Please enter your email." Font-Bold="True" ForeColor="Red" ValidationGroup="account_settings"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalid_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="Please enter your valid email." Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="account_settings"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:CustomValidator ID="customvalid_unique_email" runat="server" ControlToValidate="TextBox_email" ErrorMessage="This email is already taken by other user please choose another." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalid_unique_email_ServerValidate" ValidationGroup="account_settings"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_qualification" runat="server" CssClass="tbl_header" Text="Qualification"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:DropDownList ID="dropdownlist_qualification" runat="server" CssClass="dropdownlist" Width="340px">
                                        <asp:ListItem Text="Under Graduate" Value="Under Graduate" />
                                        <asp:ListItem Text="Post Graduate" Value="Post Graduate" />
                                        <asp:ListItem Text="Phd" Value="Phd" />
                                    </asp:DropDownList>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <asp:Button ID="Button_update" runat="server" CssClass="btn_update" OnClick="Button_update_Click" Text="Update" ValidationGroup="account_settings" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button_back" runat="server" CssClass="btn_back" OnClick="Button_back_Click" Text="Back" />
                                    <br />
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

