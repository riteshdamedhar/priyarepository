<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_administrator.master" autoeventwireup="true" inherits="Administrator_student_details, App_Web_sw5gkuqa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Student Detail</h1><br /><br />
                <div class="student_detail">
                    <asp:Panel ID="panel_student_detail" runat="server" Width="100%">
                        <asp:Label ID="label_success" runat="server" Font-Bold="False" ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                        <asp:GridView ID="gridview_student_detail" runat="server" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="user_id,active" OnRowCommand="gridview_student_detail_RowCommand" OnRowDataBound="gridview_student_detail_RowDataBound" Width="100%" AllowPaging="True" OnPageIndexChanging="gridview_student_detail_PageIndexChanging" PageSize="6">
                            <Columns>
                                <asp:TemplateField HeaderText="First Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("first_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Last Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("last_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="More Detail">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_zoom" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="more_detail" CssClass="btn_zoom" Text="More Detail" Height="35px" Width="105px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Block / Unblock">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_block_unblock" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="block_unblock" Text="Block / Unblock" CssClass="btn_block_unblock" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle Font-Bold="False" />
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        <br />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="panel_student_detail_zoom" runat="server" Height="100%" Visible="False" Width="100%">
                        <asp:DetailsView ID="detailsview_student_detail_zoom" runat="server" AutoGenerateRows="False" DataKeyNames="user_id,active" Height="100%" Width="100%" GridLines="Horizontal">
                            <FieldHeaderStyle CssClass="tbl_header" />
                            <Fields>
                                <asp:TemplateField HeaderText="Profile Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# bind("profile_image", "../{0}")%>' CssClass="profile_image" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Student ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# bind("user_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="First Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# bind("first_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Last Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# bind("last_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%# bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Birthdate">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%# bind("birthdate") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Qualification">
                                    <ItemTemplate>
                                        <asp:Label ID="Label12" runat="server" Text='<%# bind("qualification") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Gender">
                                    <ItemTemplate>
                                        <asp:Label ID="Label13" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Country">
                                    <ItemTemplate>
                                        <asp:Label ID="Label14" runat="server" Text='<%# bind("country") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Active">
                                    <ItemTemplate>
                                        <asp:Label ID="Label15" runat="server" Text='<%# bind("active") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Fields>
                            <RowStyle CssClass="tbl_row" />
                        </asp:DetailsView>
                        <br />
                        <br />
                        <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
                    </asp:Panel>
                    <br />
                    <br />
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

