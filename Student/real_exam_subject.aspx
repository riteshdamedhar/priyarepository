<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="Student_exam, App_Web_4k3agjbx" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Real Exam</h1><br /><br />
                <div class="information">
                         <p>
                            Select your subject that you want to give real exam.
                        </p>
                    <br /><br />
                    <asp:Panel ID="Panel_practice_exam" runat="server">
                        <asp:DropDownList ID="DropDownList_subject" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList_subject_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_subject" runat="server" ControlToValidate="DropDownList_subject" ErrorMessage="Please select your subject." Font-Bold="True" ForeColor="Red" InitialValue="0" ValidationGroup="practice_exam"></asp:RequiredFieldValidator>
                        <br />
                    </asp:Panel>
                    <br />
                    <asp:UpdatePanel ID="UpdatePanel_subject_information" runat="server" Visible="False">

                        <ContentTemplate>
                        <p>
                            Basic Subject Info.
                        </p>
                        <br />
                        <asp:Label ID="Label_subject_information" runat="server" Font-Italic="True" Font-Size="15pt" ForeColor="#FCC5C9"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label_total_question" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Green"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label_start_button_insrtu" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Green"></asp:Label>
                            <br />
                        <br />
                        <br />
                        <asp:Button ID="Button_next" runat="server" CssClass="btn_change_profile_image" OnClick="Button_next_Click" Text="Start Real Exam" ValidationGroup="practice_exam" />
                            <asp:ConfirmButtonExtender ID="Button_next_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure you want to start Real Exam. After click on OK button Real Exam will start." Enabled="True" TargetControlID="Button_next">
                            </asp:ConfirmButtonExtender>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button_show_result" runat="server" CssClass="btn_change_profile_image" OnClick="Button_show_result_Click" Text="Show Result" Visible="False" />
                    </ContentTemplate>
                        </asp:UpdatePanel>
                    <br />

                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

