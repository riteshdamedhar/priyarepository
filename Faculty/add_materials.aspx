<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_faculty.master" autoeventwireup="true" inherits="Faculty_add_materials, App_Web_5fyidnjr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Add Materials</h1><br /><br />
                <div class="information">
                    <br />
                    <asp:Panel ID="Panel_materials" runat="server">
                        <br />
                        <asp:Label ID="label_success" runat="server"></asp:Label>
                        <asp:GridView ID="GridView_materials" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,fk_faculty_id,fk_subject_id" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView_materials_PageIndexChanging" PageSize="6">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox_delete_material" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Materials Title">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("materials_title") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Materials Link">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# bind("materials_link") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        <br />
                        <br />
                        <asp:Button ID="Button_add_new_materials" runat="server" CssClass="btn_change_profile_image" OnClick="Button_add_new_materials_Click" Text="Add New Materials" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button_delete" runat="server" CssClass="btn_back" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this selected record?');" OnClick="Button_delete_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button_back" runat="server" CssClass="btn_back" OnClick="Button_back_Click" Text="Back" />
                    </asp:Panel>
                    <br />
                    <br />
                    
                    <asp:Panel ID="Panel_add_materials" runat="server" Visible="False">
                        <asp:Label ID="Label_successfull_add_materials" runat="server"></asp:Label>
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_title" runat="server" CssClass="tbl_header" Text="Title"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <br />
                                    <asp:TextBox ID="TextBox_material_title" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_material_title" ErrorMessage="Please enter material title." Font-Bold="True" ForeColor="Red" ValidationGroup="add_materials"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label_file" runat="server" CssClass="tbl_header" Text="File"></asp:Label>
                                </td>
                                <td class="auto-style5">
                                    <br />
                                    <br />
                                    <asp:FileUpload ID="FileUpload_add_materials" runat="server" />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    <br />
                                    <asp:Label ID="Label_file_upload" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style5">
                                    <br />
                                    <br />
                                    <asp:Button ID="btn_add" runat="server" CssClass="btn_save" Text="Add" OnClick="btn_change_Click" ValidationGroup="add_materials" />
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

