<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="contact, App_Web_idnitzbr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
         <asp:Panel ID="Panel_login" runat="server">
            <div id="contact">
                <asp:Panel ID="Panel_question" runat="server" Width="100%">
                     <h1>Contact Online Test Application</h1>
			            <div>
				            <div class="section">
                                <p>
						            We’re happy to answer any questions you have or provide you with an estimate. Just send us a message in the form below.<br />
                                    Even if there is something you have always wanted to experience and can't find it on online test application, let us know and we promise we'll do our best to find it for you and send you there.
					            </p>
                                <ul>
						            <li>
							            <span>location</span> Ganpat University, Mehsana-Gozaria Highway, PO - 384012, North Gujarat, INDIA
						            </li>
						            <li>
							            <span>Email</span> info@onlinetestapplication.com
						            </li>
						            <li>
							            <span>call (Toll Free No)</span> 1800 233 12345 (Monday - Friday 10.00 am to 5.30 pm)
						            </li>
						            <li>
							            <span>hours</span> Monday To Friday 10:00 am - 5:00 pm 
						            </li>
					            </ul>
                            </div>
                            <div class="figure">
					            <div>
						            <img src="images/contact_us.jpg" alt="" />
						            <p>
							            We are here to answer any questions you may have about our online test application experiences. Reach out to us and we'll respond as soon as we can.
						            </p>
					            </div>
				            </div>
                        </div>
                    </asp:Panel>
                        <div class="contact_detail">
                            <span>send a message</span><br />
                            <asp:ValidationSummary ID="ValidationSummary_contact" runat="server" Font-Bold="True" ForeColor="Red" ValidationGroup="contact" />
                            <br />
                            <asp:Panel ID="Panel_contact" runat="server" CssClass="panel">
                                <div class="information">
                                    <label for="name">your name:</label>
					                <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ControlToValidate="TextBox_name" Display="None" ErrorMessage="Please enter your name." Font-Bold="False" ValidationGroup="contact"></asp:RequiredFieldValidator>
&nbsp;<label for="email">email address:</label>
                                    <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="TextBox_email" Display="None" ErrorMessage="Please enter your email." ValidationGroup="contact"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator_valid_email" runat="server" ControlToValidate="TextBox_email" Display="None" ErrorMessage="Please enter your valid email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="contact"></asp:RegularExpressionValidator>
&nbsp;<label for="subject">subject:</label>
                                    <asp:TextBox ID="TextBox_subject" runat="server"></asp:TextBox>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_subject" runat="server" ControlToValidate="TextBox_subject" Display="None" ErrorMessage="Please enter your subject." ValidationGroup="contact"></asp:RequiredFieldValidator>
                                </div>
                                <div>
					                <label for="message">message:</label>
					                <asp:TextBox ID="TextBox_message" runat="server" TextMode="MultiLine"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator_message" runat="server" ControlToValidate="TextBox_message" Display="None" ErrorMessage="Please enter your message." ValidationGroup="contact"></asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button_send" runat="server" CssClass="btn_send" Text="Send" OnClick="Button_send_Click" ValidationGroup="contact" />
                                    <asp:Label ID="Label_success" runat="server"></asp:Label>
                                    &nbsp;
                                </div>
                            </asp:Panel>
                        </div>
                </div>
             </asp:Panel>
        </div>
</asp:Content>

