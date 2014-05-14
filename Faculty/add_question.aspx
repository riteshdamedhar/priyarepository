<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_faculty.master" autoeventwireup="true" inherits="Faculty_add_question, App_Web_dop0hbet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 346px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div id="body">
        <asp:Panel ID="Panel_add_question" runat="server">
            <div id="login">
                <h1>Add Question</h1><br /><br />
                <div class="add_question">
                    
                    <asp:Panel ID="Panel_add_new_question" runat="server" Width="100%">
                        <br />
                        <asp:Label ID="label_success" runat="server"></asp:Label>
                        <asp:GridView ID="GridView_edit_question" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView_edit_question_PageIndexChanging" PageSize="6" DataKeyNames="question_id,fk_subject_id" OnRowCommand="GridView_edit_question_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox_delete_question" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Question">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("question") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="OptionA">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("optionA") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="OptionB">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("optionB") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="OptionC">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("optionC") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="OptionD">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# bind("optionD") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correct Answer">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# bind("correct_answer") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:Button ID="Btn_edit_question" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="edit_question" CssClass="btn_edit" Text="Edit" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        <br />
                        <asp:Button ID="Button_add_new_question" runat="server" CssClass="btn_add_new_question" Text="Add New Question" OnClick="Button_add_new_question_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button_delete" runat="server" CssClass="btn_delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this selected record?');" OnClick="Button_delete_Click" />
                        <br /><br />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="Panel_edit_new_question" runat="server" Visible="False">
                        <br />
                        <asp:Label ID="lbl_question_add_successfully" runat="server" Font-Bold="False" ForeColor="Black"></asp:Label>
                        <asp:CustomValidator ID="CustomValidator_all_option_different" runat="server" ErrorMessage="All four option must be different." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_all_option_different_ServerValidate" ValidationGroup="add_question"></asp:CustomValidator>
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" CssClass="tbl_header" Text="Question ID"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_question_id" runat="server" Enabled="False"></asp:TextBox>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label9" runat="server" CssClass="tbl_header" Text="Subject ID"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_fk_subject_id" runat="server" Enabled="False"></asp:TextBox>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label10" runat="server" CssClass="tbl_header" Text="Question"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_question" runat="server" Height="70px" TextMode="MultiLine" Width="335px"></asp:TextBox>
                                    <br />
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_question" runat="server" ControlToValidate="TextBox_question" ErrorMessage="Please enter your question." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_unique_question" runat="server" ErrorMessage="This question is already added." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_unique_question_ServerValidate" ValidationGroup="add_question"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label11" runat="server" CssClass="tbl_header" Text="OptionA"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_optionA" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_optionA" runat="server" ControlToValidate="TextBox_optionA" ErrorMessage="Please enter your optionA." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label12" runat="server" CssClass="tbl_header" Text="OptionB"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_optionB" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_optionB" runat="server" ControlToValidate="TextBox_optionB" ErrorMessage="Please enter your optionB." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label13" runat="server" CssClass="tbl_header" Text="OptionC"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_optionC" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_optionC" runat="server" ControlToValidate="TextBox_optionC" ErrorMessage="Please enter your optionC." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label14" runat="server" CssClass="tbl_header" Text="OptionD"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_optionD" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_optionD" runat="server" ControlToValidate="TextBox_optionD" ErrorMessage="Please enter your optionD." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label15" runat="server" CssClass="tbl_header" Text="Correct Answer"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_correct_answer" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_correct_answer" runat="server" ControlToValidate="TextBox_correct_answer" ErrorMessage="Please enter your correct answer." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_correct_answer_match_with_four_option" runat="server" ErrorMessage="Your correct answer does not match with any of they four option." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_correct_answer_match_with_four_option_ServerValidate" ValidationGroup="add_question"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label16" runat="server" CssClass="tbl_header" Text="Question Type"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:RadioButtonList ID="RadioButtonList_question_type" runat="server" RepeatDirection="Horizontal" Width="339px">
                                        <asp:ListItem Value="0">Practice Question</asp:ListItem>
                                        <asp:ListItem Value="1">Real Question</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList_question_type" ErrorMessage="Please select your question type." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label17" runat="server" CssClass="tbl_header" Text="Marks"></asp:Label>
                                </td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox_marks" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_marks" runat="server" ControlToValidate="TextBox_marks" ErrorMessage="Please enter the question marks." Font-Bold="True" ForeColor="Red" ValidationGroup="add_question"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_valid_marks" runat="server" ControlToValidate="TextBox_marks" ErrorMessage="Please enter valid marks." Font-Bold="True" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="add_question"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td class="auto-style3">
                                    <br />
                                    <br />
                                    <asp:Button ID="btn_save" runat="server" CssClass="btn_save" OnClick="btn_save_Click" Text="Save" ValidationGroup="add_question" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:HiddenField ID="HiddenField_save_type" runat="server" />
                                    &nbsp;
                                    <asp:HiddenField ID="HiddenField_question_id" runat="server" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                    
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

