<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="materials, App_Web_rpexcx5w" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Materials</h1><br /><br />
                <div class="information">
                         <p>
                            Select your subject for your materials.
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
                            Basic Subject Info.&nbsp;
                        </p>
                        <br />
                        <asp:Label ID="Label_subject_information" runat="server" Font-Italic="True" Font-Size="12pt" ForeColor="#FCC5C9"></asp:Label>
                            <br />
                            <br />
                            <p>
                                Click on link to Download.
                            </p>
                            <br />
                            <asp:Panel ID="Panel_materials_link" runat="server">
                            </asp:Panel>
                            <br />
                            <br />
                    </ContentTemplate>
                        </asp:UpdatePanel>
                    <br />

                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

