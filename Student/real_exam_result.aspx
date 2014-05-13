<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="Student_real_exam_result, App_Web_m5jjtxsc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
              <asp:Panel ID="Panel_result" runat="server" Font-Size="20pt" ForeColor="#FCC5C9" GroupingText="Exam Result">
                <% 
                    Bussineslayer bl = new Bussineslayer();
                    int subject_id = Convert.ToInt32(Session["subject_id"]);
                    string subject_name = bl.get_subject_name_by_id(subject_id);
                %>
                    <table style="width: 100%; text-align:left;">
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Questions"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_question" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Questions Attempt"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_question_attempt" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Questions Not Attempted"></asp:Label>
                            </td>
                            <td class="auto-style7" colspan="1">
                                <asp:Label ID="Label_total_question_not_attempt" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Correct Answer"></asp:Label>
                            </td>
                            <td class="auto-style7" colspan="1">
                                <asp:Label ID="Label_total_correct_answer_number" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Incorrect Answer"></asp:Label>
                            </td>
                            <td class="auto-style7" colspan="1">
                                <asp:Label ID="Label_total_incorrect_answer_number" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Correct Answers Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_correct_answer_marks" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Incorreect Answer Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_incorrect_answer_marks" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Total Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_marks" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9" Text="Obtained Marks"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label_total_obtain_marks" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#989282" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="LabelLabel_send_email_instru" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="12pt" ForeColor="Green" Text="Get Your Exam Result From Results Tab."></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button_exit" runat="server" CssClass="btn_back" OnClick="Button_exit_Click" Text="Back" />
                </asp:Panel>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

