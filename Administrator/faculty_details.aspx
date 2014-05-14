<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_administrator.master" autoeventwireup="true" inherits="Administrator_faculty_details, App_Web_sw5gkuqa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 354px;
        }
        .auto-style4 {
            width: 354px;
            height: 52px;
        }
        .auto-style5 {
            width: 353px;
            height: 52px;
        }
        .auto-style6 {
            height: 52px;
        }
        .auto-style7 {
            width: 353px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Faculty Detail</h1><br /><br />
                <div class="faculty_detail">

                    <asp:Panel ID="panel_faculty_detail" runat="server" Width="100%">
                        <asp:Label ID="label_success" runat="server"></asp:Label>
                        <asp:GridView ID="gridview_faculty_detail" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="user_id,active" OnRowCommand="gridview_faculty_detail_RowCommand" OnRowDataBound="gridview_faculty_detail_RowDataBound" Width="100%" AllowPaging="True" OnPageIndexChanging="gridview_faculty_detail_PageIndexChanging" PageSize="6" >
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="checkbox_delete" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("first_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Last Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("last_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="More Detail">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_zoom" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="more_detail" CssClass="btn_zoom" Text="More Detail" Height="35px" Width="105px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Block / Unblock">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_block_unblock" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="block_unblock" CssClass="btn_block_unblock" Text="Block / Unblock" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        <br />
                        <br />
                        <asp:Button ID="btn_add_new_faculty" runat="server" CssClass="btn_add_new_faculty" Text="Add New Faculty" OnClick="btn_add_new_faculty_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_delete" runat="server" CssClass="btn_delete" OnClick="btn_delete_Click" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this selected record?');" />
                    </asp:Panel>


                    <asp:Panel ID="panel_faculty_detail_zoom" runat="server" Height="100%" Visible="False" Width="100%">
                        <asp:DetailsView ID="detailsview_faculty_detail_zoom" runat="server" AutoGenerateRows="False" Height="100%" Width="100%" GridLines="Horizontal">
                            <FieldHeaderStyle CssClass="tbl_header" />
                            <Fields>
                                <asp:TemplateField HeaderText="Profile Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" CssClass="profile_image" ImageUrl='<%# bind("profile_image", "../{0}") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Faculty ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("user_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# bind("first_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Last Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# bind("last_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Qualification">
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%# bind("qualification") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Gender">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Active">
                                    <ItemTemplate>
                                        <asp:Label ID="Label13" runat="server" Text='<%# bind("active") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Fields>
                            <RowStyle CssClass="tbl_row" />
                        </asp:DetailsView>
                        <br />
                        <br />
                        <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
                    </asp:Panel>


                    <asp:Panel ID="panel_add_new_faculty" runat="server" Height="100%" Width="100%" Visible="False">
                        <asp:ValidationSummary ID="validationsummary_add_new_faculty" runat="server" Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Height="100%" Width="100%" />
                        <asp:Label ID="lbl_faculty_registered_successfully" runat="server"></asp:Label>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_user_id" runat="server" CssClass="tbl_header" Text="Faculty ID"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="TextBox_user_id" runat="server" Enabled="False"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_first_name" runat="server" CssClass="tbl_header" Text="First Name"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtbox_first_name" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_first_name" runat="server" ControlToValidate="txtbox_first_name" Display="None" ErrorMessage="Please enter first name." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_first_name_spaces" runat="server" ControlToValidate="txtbox_first_name" Display="None" ErrorMessage="Your first name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_first_name_alphabets" runat="server" ControlToValidate="txtbox_first_name" Display="None" ErrorMessage="Your first name only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_last_name" runat="server" CssClass="tbl_header" Text="Last Name"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtbox_last_name" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_last_name" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Please enter last name." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_last_name_spaces" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Your last name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+" Display="None" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_last_name_alphabets" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Your last name only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$" Display="None" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_username" runat="server" CssClass="tbl_header" Text="Username"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtbox_username" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_username" runat="server" ControlToValidate="txtbox_username" ErrorMessage="Please enter username." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_username_spaces" runat="server" ControlToValidate="txtbox_username" ErrorMessage="Your username must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+" Display="None" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalidator_username_alphabets_numbers" runat="server" ControlToValidate="txtbox_username" ErrorMessage="Your username only contain alphabets and numbers." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z0-9]+$" Display="None" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:CustomValidator ID="customvalidator_unique_username" runat="server" ControlToValidate="txtbox_username" ErrorMessage="This username is already taken by other faculty please choose another." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalidator_unique_username_ServerValidate" Display="None" ValidationGroup="add_new_faculty"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_password" runat="server" CssClass="tbl_header" Text="Password"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtbox_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_password" runat="server" ControlToValidate="txtbox_password" ErrorMessage="Please enter password." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="customvalidator_password_length" runat="server" ControlToValidate="txtbox_password" ErrorMessage="Your password must be at least 6 characters." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalidator_password_length_ServerValidate" Display="None" ValidationGroup="add_new_faculty"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_confirm_password" runat="server" CssClass="tbl_header" Text="Confirm Password"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:TextBox ID="txtbox_confirm_password" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_confirm_password" runat="server" ControlToValidate="txtbox_confirm_password" ErrorMessage="Please enter confirm password." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="comparevalid_password" runat="server" ControlToCompare="txtbox_password" ControlToValidate="txtbox_confirm_password" ErrorMessage="Your password does not match." Font-Bold="True" ForeColor="Red" Display="None" ValidationGroup="add_new_faculty"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lbl_email" runat="server" CssClass="tbl_header" Text="Email"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="txtbox_email" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style6">
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please enter email." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="regularexpressionvalid_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please enter your valid email." Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ValidationGroup="add_new_faculty"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:CustomValidator ID="customvalid_unique_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="This email is already taken by other faculty please choose another." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalid_unique_email_ServerValidate" Display="None" ValidationGroup="add_new_faculty"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_qualification" runat="server" CssClass="tbl_header" Text="Qualification"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                        <asp:DropDownList ID="dropdownlist_qualification" runat="server" CssClass="dropdownlist" Width="340px">
                                            <asp:ListItem Value="0">Select Qualification</asp:ListItem>
                                            <asp:ListItem Text="Under Graduate" Value="Under Graduate" />
                                            <asp:ListItem Text="Post Graduate" Value="Post Graduate" />
                                            <asp:ListItem Text="Phd" Value="Phd" />
                                        </asp:DropDownList>
                                        <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_qualification" runat="server" ControlToValidate="dropdownlist_qualification" Display="None" ErrorMessage="Please select qualification." Font-Bold="True" ForeColor="Red" InitialValue="0" ValidationGroup="add_new_faculty"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label_subject" runat="server" CssClass="tbl_header" Text="Subject"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:DropDownList ID="DropDownList_subject" runat="server" CssClass="dropdownlist" Height="35px" Width="340px">
                                    </asp:DropDownList>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_subject" runat="server" ControlToValidate="DropDownList_subject" Display="None" ErrorMessage="Please select subject." Font-Bold="True" ForeColor="Red" InitialValue="0" ValidationGroup="add_new_faculty"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="lbl_gender" runat="server" CssClass="tbl_header" Text="Gender"></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <br />
                                    <asp:RadioButtonList ID="radiobtnlist_gender" runat="server" Height="31px" RepeatDirection="Horizontal" Width="250px">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="requfieldvalidator_gender" runat="server" ControlToValidate="radiobtnlist_gender" Display="None" ErrorMessage="Please select gender." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_faculty"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td class="auto-style7">
                                    <br />
                                    <br />
                                    <asp:Button ID="btn_save" runat="server" CssClass="btn_save" Text="Save" ValidationGroup="add_new_faculty" EnableTheming="False" OnClick="btn_save_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_add_new_faculty_back" runat="server" CssClass="btn_back" Text="Back" OnClick="btn_add_new_faculty_back_Click" />
                                </td>
                                <td>
                                    &nbsp; </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

