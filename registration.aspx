<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_student.master" autoeventwireup="true" inherits="registration, App_Web_rpexcx5w" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_registration" runat="server">
            <div id="registration">
                <h1>Registration</h1><br />
                <asp:Label ID="lbl_registered_successfully" runat="server" Font-Bold="False" ForeColor="Black"></asp:Label>
                <br />
               
                    <div class="information">


                        <!--<label for="name">your name:</label>
					<input type="text" name="name" id="Text1"><br />
					<label for="email">email address:</label>
					<input type="text" name="email" id="Text2"><br />
					<label for="subject">subject:</label>
					<input type="text" name="subject" id="Text3"><br /><br />
                    <input type="submit" name="submit" id="Submit1" value="Submit">!-->


                        <asp:Label ID="lbl_first_name" runat="server" Text="First Name:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_first_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqfieldvalid_first_name" runat="server" ControlToValidate="txtbox_first_name" ErrorMessage="Please enter your first name." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionValid_firstname_space" runat="server" ControlToValidate="txtbox_first_name" ErrorMessage="Your first name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionvalidator_first_name_alphabets" runat="server" ControlToValidate="txtbox_first_name" ErrorMessage="Your first name can only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$"></asp:RegularExpressionValidator>
                        <br />

                        <asp:Label ID="lbl_last_name" runat="server" Text="Last Name:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_last_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqfieldvalid_last_name" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Please enter your last name." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionvalid_lastname_space" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Your last name must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionvalidator_last_name_alphabets0" runat="server" ControlToValidate="txtbox_last_name" ErrorMessage="Your last name can only contain alphabets." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z]+$"></asp:RegularExpressionValidator>
                        <br />

                        <asp:Label ID="_lbl_user_name" runat="server" Text="Username:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_user_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqfieldvalid_user_name" runat="server" ControlToValidate="txtbox_user_name" ErrorMessage="Please enter your username." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbox_user_name" ErrorMessage="Your username must not contain any spaces." Font-Bold="True" ForeColor="Red" ValidationExpression="[^\s]+"></asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="customvalidator_unique_username" runat="server" ControlToValidate="txtbox_user_name" ErrorMessage="This username is already taken by other user please choose another." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalidator_unique_username_ServerValidate"></asp:CustomValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionvalidator_username_alphabets_numbers" runat="server" ControlToValidate="txtbox_user_name" ErrorMessage="Your username only contain alphabets and numbers." Font-Bold="True" ForeColor="Red" ValidationExpression="^[\s a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                        <br />

                        <asp:Label ID="lbl_password" runat="server" Text="Password:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requfieldvalid_pass" runat="server" ControlToValidate="txtbox_pass" ErrorMessage="Please enter your password." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CustomValidator ID="customvalidator_pass_length" runat="server" ControlToValidate="txtbox_pass" ErrorMessage="Your password must be at least 6 characters." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalidator_pass_length_ServerValidate"></asp:CustomValidator>
                        <br />
                        <asp:Label ID="lbl_confirm_pass" runat="server" CssClass="form_label" Text="Confirm Password:"></asp:Label>
                        <asp:TextBox ID="txtbox_confirm_pass" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requfieldvalid_confirm_pass" runat="server" ControlToValidate="txtbox_confirm_pass" ErrorMessage="Please enter your confirm password." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="compareValid_pass" runat="server" ControlToCompare="txtbox_pass" ControlToValidate="txtbox_confirm_pass" ErrorMessage="Your password does not match." Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                        <br />

                        <asp:Label ID="lbl_email" runat="server" Text="Email:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requfieldvalid_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please enter your email." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="regularexpressionvalid_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please enter your valid email." Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="customvalid_unique_email" runat="server" ControlToValidate="txtbox_email" ErrorMessage="This email is already taken by other user please choose another." Font-Bold="True" ForeColor="Red" OnServerValidate="customvalid_unique_email_ServerValidate"></asp:CustomValidator>
                        <br />

                        <asp:Label ID="lbl_birthday" runat="server" Text="Bithday:" CssClass="form_label"></asp:Label>
                        <asp:TextBox ID="txtbox_birthdate" runat="server"></asp:TextBox>
                        <asp:CalendarExtender TargetControlID="txtbox_birthdate" ID="txtbox_birthdate_CalendarExtender" runat="server" DefaultView="Days" Enabled="True" PopupPosition="BottomLeft" Format="dd-MM-yyyy"></asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_birthdate" ErrorMessage="Please enter your birthdate." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtbox_birthdate" ErrorMessage="Please enter your valid birthdate." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        <br />
                        <br />

                        <asp:Label ID="lbl_qualification" runat="server" Text="Qualification:" CssClass="form_label"></asp:Label>
                        <asp:DropDownList ID="dropdownlist_qualification" runat="server" CssClass="dropdownlist" Width="340px">
                            <asp:ListItem Text="Select your qualification" Value="0" />
                            <asp:ListItem Text="12 Pass" Value="12 pass" />
                            <asp:ListItem Text="Under Graduate" Value="Under Graduate" />
                            <asp:ListItem Text="Post Graduate" Value="Post Graduate" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="requfieldvalid_qualification" runat="server" ControlToValidate="dropdownlist_qualification" ErrorMessage="Please select your qualification." Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        <br /><br />
                        
                        <asp:Label ID="lbl_gender" runat="server" Text="Gender:" CssClass="form_label"></asp:Label>
                        <asp:RadioButtonList ID="radio_btnlist_gender" runat="server" RepeatDirection="Horizontal" Height="31px" Width="250px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="requfieldvalid_gender" runat="server" ControlToValidate="radio_btnlist_gender" ErrorMessage="Please select your gender." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        
                        <asp:Label ID="lbl_country" runat="server" Text="Country:" CssClass="form_label"></asp:Label>
                        <asp:DropDownList ID="dropdownlist_country" runat="server" CssClass="dropdownlist" Width="340px">
                            <asp:ListItem Text="Select your country" Value="0" />
                            <asp:ListItem Text="Afghanistan" Value="AF" />
                            <asp:ListItem Text="Åland Islands" Value="AX" />
                            <asp:ListItem Text="Albania" Value="AL" />
                            <asp:ListItem Text="Algeria" Value="DZ" />
                            <asp:ListItem Text="American Samoa" Value="AS" />
                            <asp:ListItem Text="Andorra" Value="AD" />
                            <asp:ListItem Text="Angola" Value="AO" />
                            <asp:ListItem Text="Anguilla" Value="AI" />
                            <asp:ListItem Text="Antarctica" Value="AQ" />
                            <asp:ListItem Text="Antigua and Barbuda" Value="AG" />
                            <asp:ListItem Text="Argentina" Value="AR" />
                            <asp:ListItem Text="Armenia" Value="AM" />
                            <asp:ListItem Text="Aruba" Value="AW" />
                            <asp:ListItem Text="Australia" Value="AU" />
                            <asp:ListItem Text="Austria" Value="AT" />
                            <asp:ListItem Text="Azerbaijan" Value="AZ" />
                            <asp:ListItem Text="Bahamas" Value="BS" />
                            <asp:ListItem Text="Bahrain" Value="BH" />
                            <asp:ListItem Text="Bangladesh" Value="BD" />
                            <asp:ListItem Text="Barbados" Value="BB" />
                            <asp:ListItem Text="Belarus" Value="BY" />
                            <asp:ListItem Text="Belgium" Value="BE" />
                            <asp:ListItem Text="Belize" Value="BZ" />
                            <asp:ListItem Text="Benin" Value="BJ" />
                            <asp:ListItem Text="Bermuda" Value="BM" />
                            <asp:ListItem Text="Bhutan" Value="BT" />
                            <asp:ListItem Text="Bolivia, Plurinational State of" Value="BO" />
                            <asp:ListItem Text="Bonaire, Sint Eustatius and Saba" Value="BQ" />
                            <asp:ListItem Text="Bosnia and Herzegovina" Value="BA" />
                            <asp:ListItem Text="Botswana" Value="BW" />
                            <asp:ListItem Text="Bouvet Island" Value="BV" />
                            <asp:ListItem Text="Brazil" Value="BR" />
                            <asp:ListItem Text="British Indian Ocean Territory" Value="IO" />
                            <asp:ListItem Text="Brunei Darussalam" Value="BN" />
                            <asp:ListItem Text="Bulgaria" Value="BG" />
                            <asp:ListItem Text="Burkina Faso" Value="BF" />
                            <asp:ListItem Text="Burundi" Value="BI" />
                            <asp:ListItem Text="Cambodia" Value="KH" />
                            <asp:ListItem Text="Cameroon" Value="CM" />
                            <asp:ListItem Text="Canada" Value="CA" />
                            <asp:ListItem Text="Cape Verde" Value="CV" />
                            <asp:ListItem Text="Cayman Islands" Value="KY" />
                            <asp:ListItem Text="Central African Republic" Value="CF" />
                            <asp:ListItem Text="Chad" Value="TD" />
                            <asp:ListItem Text="Chile" Value="CL" />
                            <asp:ListItem Text="China" Value="CN" />
                            <asp:ListItem Text="Christmas Island" Value="CX" />
                            <asp:ListItem Text="Cocos (Keeling) Islands" Value="CC" />
                            <asp:ListItem Text="Colombia" Value="CO" />
                            <asp:ListItem Text="Comoros" Value="KM" />
                            <asp:ListItem Text="Congo" Value="CG" />
                            <asp:ListItem Text="Congo, the Democratic Republic of the" Value="CD" />
                            <asp:ListItem Text="Cook Islands" Value="CK" />
                            <asp:ListItem Text="Costa Rica" Value="CR" />
                            <asp:ListItem Text="Côte d'Ivoire" Value="CI" />
                            <asp:ListItem Text="Croatia" Value="HR" />
                            <asp:ListItem Text="Cuba" Value="CU" />
                            <asp:ListItem Text="Curaçao" Value="CW" />
                            <asp:ListItem Text="Cyprus" Value="CY" />
                            <asp:ListItem Text="Czech Republic" Value="CZ" />
                            <asp:ListItem Text="Denmark" Value="DK" />
                            <asp:ListItem Text="Djibouti" Value="DJ" />
                            <asp:ListItem Text="Dominica" Value="DM" />
                            <asp:ListItem Text="Dominican Republic" Value="DO" />
                            <asp:ListItem Text="Ecuador" Value="EC" />
                            <asp:ListItem Text="Egypt" Value="EG" />
                            <asp:ListItem Text="El Salvador" Value="SV" />
                            <asp:ListItem Text="Equatorial Guinea" Value="GQ" />
                            <asp:ListItem Text="Eritrea" Value="ER" />
                            <asp:ListItem Text="Estonia" Value="EE" />
                            <asp:ListItem Text="Ethiopia" Value="ET" />
                            <asp:ListItem Text="Falkland Islands (Malvinas)" Value="FK" />
                            <asp:ListItem Text="Faroe Islands" Value="FO" />
                            <asp:ListItem Text="Fiji" Value="FJ" />
                            <asp:ListItem Text="Finland" Value="FI" />
                            <asp:ListItem Text="France" Value="FR" />
                            <asp:ListItem Text="French Guiana" Value="GF" />
                            <asp:ListItem Text="French Polynesia" Value="PF" />
                            <asp:ListItem Text="French Southern Territories" Value="TF" />
                            <asp:ListItem Text="Gabon" Value="GA" />
                            <asp:ListItem Text="Gambia" Value="GM" />
                            <asp:ListItem Text="Georgia" Value="GE" />
                            <asp:ListItem Text="Germany" Value="DE" />
                            <asp:ListItem Text="Ghana" Value="GH" />
                            <asp:ListItem Text="Gibraltar" Value="GI" />
                            <asp:ListItem Text="Greece" Value="GR" />
                            <asp:ListItem Text="Greenland" Value="GL" />
                            <asp:ListItem Text="Grenada" Value="GD" />
                            <asp:ListItem Text="Guadeloupe" Value="GP" />
                            <asp:ListItem Text="Guam" Value="GU" />
                            <asp:ListItem Text="Guatemala" Value="GT" />
                            <asp:ListItem Text="Guernsey" Value="GG" />
                            <asp:ListItem Text="Guinea" Value="GN" />
                            <asp:ListItem Text="Guinea-Bissau" Value="GW" />
                            <asp:ListItem Text="Guyana" Value="GY" />
                            <asp:ListItem Text="Haiti" Value="HT" />
                            <asp:ListItem Text="Heard Island and McDonald Islands" Value="HM" />
                            <asp:ListItem Text="Holy See (Vatican City State)" Value="VA" />
                            <asp:ListItem Text="Honduras" Value="HN" />
                            <asp:ListItem Text="Hong Kong" Value="HK" />
                            <asp:ListItem Text="Hungary" Value="HU" />
                            <asp:ListItem Text="Iceland" Value="IS" />
                            <asp:ListItem Text="India" Value="IN" />
                            <asp:ListItem Text="Indonesia" Value="ID" />
                            <asp:ListItem Text="Iran, Islamic Republic of" Value="IR" />
                            <asp:ListItem Text="Iraq" Value="IQ" />
                            <asp:ListItem Text="Ireland" Value="IE" />
                            <asp:ListItem Text="Isle of Man" Value="IM" />
                            <asp:ListItem Text="Israel" Value="IL" />
                            <asp:ListItem Text="Italy" Value="IT" />
                            <asp:ListItem Text="Jamaica" Value="JM" />
                            <asp:ListItem Text="Japan" Value="JP" />
                            <asp:ListItem Text="Jersey" Value="JE" />
                            <asp:ListItem Text="Jordan" Value="JO" />
                            <asp:ListItem Text="Kazakhstan" Value="KZ" />
                            <asp:ListItem Text="Kenya" Value="KE" />
                            <asp:ListItem Text="Kiribati" Value="KI" />
                            <asp:ListItem Text="Korea, Democratic People's Republic of" Value="KP" />
                            <asp:ListItem Text="Korea, Republic of" Value="KR" />
                            <asp:ListItem Text="Kuwait" Value="KW" />
                            <asp:ListItem Text="Kyrgyzstan" Value="KG" />
                            <asp:ListItem Text="Lao People's Democratic Republic" Value="LA" />
                            <asp:ListItem Text="Latvia" Value="LV" />
                            <asp:ListItem Text="Lebanon" Value="LB" />
                            <asp:ListItem Text="Lesotho" Value="LS" />
                            <asp:ListItem Text="Liberia" Value="LR" />
                            <asp:ListItem Text="Libya" Value="LY" />
                            <asp:ListItem Text="Liechtenstein" Value="LI" />
                            <asp:ListItem Text="Lithuania" Value="LT" />
                            <asp:ListItem Text="Luxembourg" Value="LU" />
                            <asp:ListItem Text="Macao" Value="MO" />
                            <asp:ListItem Text="Macedonia, the former Yugoslav Republic of" Value="MK" />
                            <asp:ListItem Text="Madagascar" Value="MG" />
                            <asp:ListItem Text="Malawi" Value="MW" />
                            <asp:ListItem Text="Malaysia" Value="MY" />
                            <asp:ListItem Text="Maldives" Value="MV" />
                            <asp:ListItem Text="Mali" Value="ML" />
                            <asp:ListItem Text="Malta" Value="MT" />
                            <asp:ListItem Text="Marshall Islands" Value="MH" />
                            <asp:ListItem Text="Martinique" Value="MQ" />
                            <asp:ListItem Text="Mauritania" Value="MR" />
                            <asp:ListItem Text="Mauritius" Value="MU" />
                            <asp:ListItem Text="Mayotte" Value="YT" />
                            <asp:ListItem Text="Mexico" Value="MX" />
                            <asp:ListItem Text="Micronesia, Federated States of" Value="FM" />
                            <asp:ListItem Text="Moldova, Republic of" Value="MD" />
                            <asp:ListItem Text="Monaco" Value="MC" />
                            <asp:ListItem Text="Mongolia" Value="MN" />
                            <asp:ListItem Text="Montenegro" Value="ME" />
                            <asp:ListItem Text="Montserrat" Value="MS" />
                            <asp:ListItem Text="Morocco" Value="MA" />
                            <asp:ListItem Text="Mozambique" Value="MZ" />
                            <asp:ListItem Text="Myanmar" Value="MM" />
                            <asp:ListItem Text="Namibia" Value="NA" />
                            <asp:ListItem Text="Nauru" Value="NR" />
                            <asp:ListItem Text="Nepal" Value="NP" />
                            <asp:ListItem Text="Netherlands" Value="NL" />
                            <asp:ListItem Text="New Caledonia" Value="NC" />
                            <asp:ListItem Text="New Zealand" Value="NZ" />
                            <asp:ListItem Text="Nicaragua" Value="NI" />
                            <asp:ListItem Text="Niger" Value="NE" />
                            <asp:ListItem Text="Nigeria" Value="NG" />
                            <asp:ListItem Text="Niue" Value="NU" />
                            <asp:ListItem Text="Norfolk Island" Value="NF" />
                            <asp:ListItem Text="Northern Mariana Islands" Value="MP" />
                            <asp:ListItem Text="Norway" Value="NO" />
                            <asp:ListItem Text="Oman" Value="OM" />
                            <asp:ListItem Text="Pakistan" Value="PK" />
                            <asp:ListItem Text="Palau" Value="PW" />
                            <asp:ListItem Text="Palestinian Territory, Occupied" Value="PS" />
                            <asp:ListItem Text="Panama" Value="PA" />
                            <asp:ListItem Text="Papua New Guinea" Value="PG" />
                            <asp:ListItem Text="Paraguay" Value="PY" />
                            <asp:ListItem Text="Peru" Value="PE" />
                            <asp:ListItem Text="Philippines" Value="PH" />
                            <asp:ListItem Text="Pitcairn" Value="PN" />
                            <asp:ListItem Text="Poland" Value="PL" />
                            <asp:ListItem Text="Portugal" Value="PT" />
                            <asp:ListItem Text="Puerto Rico" Value="PR" />
                            <asp:ListItem Text="Qatar" Value="QA" />
                            <asp:ListItem Text="Réunion" Value="RE" />
                            <asp:ListItem Text="Romania" Value="RO" />
                            <asp:ListItem Text="Russian Federation" Value="RU" />
                            <asp:ListItem Text="Rwanda" Value="RW" />
                            <asp:ListItem Text="Saint Barthélemy" Value="BL" />
                            <asp:ListItem Text="Saint Helena, Ascension and Tristan da Cunha" Value="SH" />
                            <asp:ListItem Text="Saint Kitts and Nevis" Value="KN" />
                            <asp:ListItem Text="Saint Lucia" Value="LC" />
                            <asp:ListItem Text="Saint Martin (French part)" Value="MF" />
                            <asp:ListItem Text="Saint Pierre and Miquelon" Value="PM" />
                            <asp:ListItem Text="Saint Vincent and the Grenadines" Value="VC" />
                            <asp:ListItem Text="Samoa" Value="WS" />
                            <asp:ListItem Text="San Marino" Value="SM" />
                            <asp:ListItem Text="Sao Tome and Principe" Value="ST" />
                            <asp:ListItem Text="Saudi Arabia" Value="SA" />
                            <asp:ListItem Text="Senegal" Value="SN" />
                            <asp:ListItem Text="Serbia" Value="RS" />
                            <asp:ListItem Text="Seychelles" Value="SC" />
                            <asp:ListItem Text="Sierra Leone" Value="SL" />
                            <asp:ListItem Text="Singapore" Value="SG" />
                            <asp:ListItem Text="Sint Maarten (Dutch part)" Value="SX" />
                            <asp:ListItem Text="Slovakia" Value="SK" />
                            <asp:ListItem Text="Slovenia" Value="SI" />
                            <asp:ListItem Text="Solomon Islands" Value="SB" />
                            <asp:ListItem Text="Somalia" Value="SO" />
                            <asp:ListItem Text="South Africa" Value="ZA" />
                            <asp:ListItem Text="South Georgia and the South Sandwich Islands" Value="GS" />
                            <asp:ListItem Text="South Sudan" Value="SS" />
                            <asp:ListItem Text="Spain" Value="ES" />
                            <asp:ListItem Text="Sri Lanka" Value="LK" />
                            <asp:ListItem Text="Sudan" Value="SD" />
                            <asp:ListItem Text="Suriname" Value="SR" />
                            <asp:ListItem Text="Svalbard and Jan Mayen" Value="SJ" />
                            <asp:ListItem Text="Swaziland" Value="SZ" />
                            <asp:ListItem Text="Sweden" Value="SE" />
                            <asp:ListItem Text="Switzerland" Value="CH" />
                            <asp:ListItem Text="Syrian Arab Republic" Value="SY" />
                            <asp:ListItem Text="Taiwan, Province of China" Value="TW" />
                            <asp:ListItem Text="Tajikistan" Value="TJ" />
                            <asp:ListItem Text="Tanzania, United Republic of" Value="TZ" />
                            <asp:ListItem Text="Thailand" Value="TH" />
                            <asp:ListItem Text="Timor-Leste" Value="TL" />
                            <asp:ListItem Text="Togo" Value="TG" />
                            <asp:ListItem Text="Tokelau" Value="TK" />
                            <asp:ListItem Text="Tonga" Value="TO" />
                            <asp:ListItem Text="Trinidad and Tobago" Value="TT" />
                            <asp:ListItem Text="Tunisia" Value="TN" />
                            <asp:ListItem Text="Turkey" Value="TR" />
                            <asp:ListItem Text="Turkmenistan" Value="TM" />
                            <asp:ListItem Text="Turks and Caicos Islands" Value="TC" />
                            <asp:ListItem Text="Tuvalu" Value="TV" />
                            <asp:ListItem Text="Uganda" Value="UG" />
                            <asp:ListItem Text="Ukraine" Value="UA" />
                            <asp:ListItem Text="United Arab Emirates" Value="AE" />
                            <asp:ListItem Text="United Kingdom" Value="GB" />
                            <asp:ListItem Text="United States" Value="US" />
                            <asp:ListItem Text="United States Minor Outlying Islands" Value="UM" />
                            <asp:ListItem Text="Uruguay" Value="UY" />
                            <asp:ListItem Text="Uzbekistan" Value="UZ" />
                            <asp:ListItem Text="Vanuatu" Value="VU" />
                            <asp:ListItem Text="Venezuela, Bolivarian Republic of" Value="VE" />
                            <asp:ListItem Text="Viet Nam" Value="VN" />
                            <asp:ListItem Text="Virgin Islands, British" Value="VG" />
                            <asp:ListItem Text="Virgin Islands, U.S." Value="VI" />
                            <asp:ListItem Text="Wallis and Futuna" Value="WF" />
                            <asp:ListItem Text="Western Sahara" Value="EH" />
                            <asp:ListItem Text="Yemen" Value="YE" />
                            <asp:ListItem Text="Zambia" Value="ZM" />
                            <asp:ListItem Text="Zimbabwe" Value="ZW" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="requfieldvalid_country" runat="server" ControlToValidate="dropdownlist_country" ErrorMessage="Please select your country." Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        <br /><br />
                        <br />
                        
                        <asp:Button ID="btn_registration_submit" runat="server" Text="Submit" CssClass="btn_registration_submit" OnClick="btn_registration_submit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_registration_reset" runat="server" CssClass="btn_registration_submit" Text="Reset" />
                    </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

