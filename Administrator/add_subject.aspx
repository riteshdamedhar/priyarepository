<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_administrator.master" autoeventwireup="true" inherits="Administrator_add_subject, App_Web_sw5gkuqa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 228px;
        }
        .auto-style4 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="body">
        <asp:Panel ID="Panel_add_subject" runat="server">
            <div id="login">
                <h1>Add Subject</h1><br /><br />
                <div class="add_subject">
                    
                    <asp:Panel ID="panel_add_subject_grid" runat="server" Width="100%">
                        <br />
                        <asp:Label ID="label_success" runat="server"></asp:Label>
                        <asp:GridView ID="gridview_add_subject" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="5" DataKeyNames="subject_id" OnPageIndexChanging="gridview_add_subject_PageIndexChanging" OnRowCommand="gridview_add_subject_RowCommand" PageSize="6" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="checkbox_delete_subject" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Subject ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("subject_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Subject Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("subject_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="button_edit_subject" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="edit_subject" Text="Edit" CssClass="btn_edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        -<br />
                        <asp:Button ID="btn_add_new_subject" runat="server" CssClass="btn_add_new_subject" OnClick="btn_add_new_subject_Click" Text="Add New Subject" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_delete" runat="server" CssClass="btn_delete" OnClick="btn_delete_Click" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this selected record?');" />
                    </asp:Panel>
                    
                    <br />
                    <asp:Panel ID="panel_add_new_subject_edit" runat="server" Height="100%" Visible="False" Width="100%">
                        <br />
                        <asp:Label ID="lbl_subject_add_successfully" runat="server"></asp:Label>
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="label_subject_id" runat="server" CssClass="tbl_header" Text="Subject  ID"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="textbox_subject_id" runat="server" Enabled="False"></asp:TextBox>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="label_subject_name" runat="server" CssClass="tbl_header" Text="Subject  Name"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="textbox_subject_name" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_subject_name" runat="server" ControlToValidate="textbox_subject_name" ErrorMessage="Please enter subject." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_subject"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_unique_subject" runat="server" ErrorMessage="This subject is already added." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_unique_subject_ServerValidate" ValidationGroup="add_new_subject"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="label_subject_name0" runat="server" CssClass="tbl_header" Text="Subject  Info"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="textbox_subject_info" runat="server" TextMode="MultiLine" Width="332px" Height="100px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_subject_info" runat="server" ControlToValidate="textbox_subject_info" ErrorMessage="Please enter subject Info." Font-Bold="True" ForeColor="Red" ValidationGroup="add_new_subject"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style4">
                                    <br />
                                    <br />
                                    <asp:Button ID="btn_save" runat="server" CssClass="btn_save" OnClick="btn_save_Click" Text="Save" ValidationGroup="add_new_subject" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                <td>
                                    <asp:HiddenField ID="HiddenField_subject_id" runat="server" />
                                    &nbsp;<asp:HiddenField ID="HiddenField_save_type" runat="server" />
&nbsp; </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

