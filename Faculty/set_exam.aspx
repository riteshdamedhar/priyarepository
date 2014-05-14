<%@ page title="" language="C#" masterpagefile="~/Master Page/MasterPage_faculty.master" autoeventwireup="true" inherits="Faculty_set_exam, App_Web_dop0hbet" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style11 {
            width: 328px;
        }
        .auto-style12 {
            width: 242px;
        }
        .auto-style13 {
            width: 475px;
        }
        .auto-style14 {
            width: 499px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="body">
        <asp:Panel ID="Panel_login" runat="server">
            <div id="login">
                <h1>Set Exam</h1><br /><br />
                <div class="faculty_detail">

                    <asp:Panel ID="Panel_set_exam" runat="server" Width="100%">
                        <asp:Label ID="lbl_question_add_successfully" runat="server" Font-Bold="False" ForeColor="Black"></asp:Label>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label_subject" runat="server" CssClass="tbl_header" Text="Subject"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:TextBox ID="TextBox_subject" runat="server" Enabled="False"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label_exam_title" runat="server" CssClass="tbl_header" Text="Exam Title"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:TextBox ID="TextBox_exam_title" runat="server"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style11">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_exam_title" runat="server" ControlToValidate="TextBox_exam_title" ErrorMessage="Please enter your exam title." Font-Bold="True" ForeColor="Red" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label_exam_date_time" runat="server" CssClass="tbl_header" Text="Exam Date &amp; Time"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:TextBox ID="TextBox_exam_date_time" runat="server"></asp:TextBox>
                                    <asp:CalendarExtender ID="TextBox_exam_date_time_CalendarExtender" runat="server" Enabled="True" Format="dd-MM-yyyy hh':'mm':'ss tt" TargetControlID="TextBox_exam_date_time">
                                    </asp:CalendarExtender>
                                    <br />
                                </td>
                                <td class="auto-style11">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_exam_date_time" runat="server" ControlToValidate="TextBox_exam_date_time" ErrorMessage="Please select exam date &amp; time." Font-Bold="True" ForeColor="Red" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_exam_date_time" runat="server" ControlToValidate="TextBox_exam_date_time" ErrorMessage="Please select a valid date &amp; time." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_exam_date_time_ServerValidate" ValidationGroup="set_exam"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label_exam_expire_date_time" runat="server" CssClass="tbl_header" Text="Exam Expire Date &amp; Time"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:TextBox ID="TextBox_exam_expire_date_time" runat="server"></asp:TextBox>
                                    <asp:CalendarExtender ID="TextBox_exam_expire_date_time_CalendarExtender" runat="server" Enabled="True" Format="dd-MM-yyyy hh':'mm':'ss tt" TargetControlID="TextBox_exam_expire_date_time">
                                    </asp:CalendarExtender>
                                    <br />
                                </td>
                                <td class="auto-style11">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_exam_expire_date_time" runat="server" ControlToValidate="TextBox_exam_expire_date_time" ErrorMessage="Please select exam expire date &amp; time." Font-Bold="True" ForeColor="Red" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_exam_expire_date_time" runat="server" ControlToValidate="TextBox_exam_expire_date_time" ErrorMessage="Please select a valid expire date &amp; time." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator_exam_expire_date_time_ServerValidate" ValidationGroup="set_exam"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label10" runat="server" CssClass="tbl_header" Text="Exam Total Question"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <asp:TextBox ID="TextBox_total_question" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style11">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_total_question" runat="server" ControlToValidate="TextBox_total_question" ErrorMessage="Please enter total question." Font-Bold="True" ForeColor="Red" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_total_question" ErrorMessage="Please enter valid  total question." Font-Bold="True" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="set_exam"></asp:RegularExpressionValidator>
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox_total_question" ErrorMessage="Exam Total Question is greater then total question in this subject. Please first add more questions in this subject." Font-Bold="True" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" ValidationGroup="set_exam"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label_total_time" runat="server" CssClass="tbl_header" Text="Exam Total Time"></asp:Label>
                                </td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:DropDownList ID="DropDownList_hours" runat="server" CssClass="dropdownlist_set_exam">
                                        <asp:ListItem Value="0">Hours</asp:ListItem>
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList_minute" runat="server" CssClass="dropdownlist_set_exam">
                                        <asp:ListItem Value="0">Minute</asp:ListItem>
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                        <asp:ListItem>60</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList_second" runat="server" CssClass="dropdownlist_set_exam">
                                        <asp:ListItem Value="0">Second</asp:ListItem>
                                        <asp:ListItem>00</asp:ListItem>
                                        <asp:ListItem>01</asp:ListItem>
                                        <asp:ListItem>02</asp:ListItem>
                                        <asp:ListItem>03</asp:ListItem>
                                        <asp:ListItem>04</asp:ListItem>
                                        <asp:ListItem>05</asp:ListItem>
                                        <asp:ListItem>06</asp:ListItem>
                                        <asp:ListItem>07</asp:ListItem>
                                        <asp:ListItem>08</asp:ListItem>
                                        <asp:ListItem>09</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem>32</asp:ListItem>
                                        <asp:ListItem>33</asp:ListItem>
                                        <asp:ListItem>34</asp:ListItem>
                                        <asp:ListItem>35</asp:ListItem>
                                        <asp:ListItem>36</asp:ListItem>
                                        <asp:ListItem>37</asp:ListItem>
                                        <asp:ListItem>38</asp:ListItem>
                                        <asp:ListItem>39</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>41</asp:ListItem>
                                        <asp:ListItem>42</asp:ListItem>
                                        <asp:ListItem>43</asp:ListItem>
                                        <asp:ListItem>44</asp:ListItem>
                                        <asp:ListItem>45</asp:ListItem>
                                        <asp:ListItem>46</asp:ListItem>
                                        <asp:ListItem>47</asp:ListItem>
                                        <asp:ListItem>48</asp:ListItem>
                                        <asp:ListItem>49</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>51</asp:ListItem>
                                        <asp:ListItem>52</asp:ListItem>
                                        <asp:ListItem>53</asp:ListItem>
                                        <asp:ListItem>54</asp:ListItem>
                                        <asp:ListItem>55</asp:ListItem>
                                        <asp:ListItem>56</asp:ListItem>
                                        <asp:ListItem>57</asp:ListItem>
                                        <asp:ListItem>58</asp:ListItem>
                                        <asp:ListItem>59</asp:ListItem>
                                        <asp:ListItem>60</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style11">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_total_time" runat="server" ControlToValidate="DropDownList_hours" ErrorMessage="Please select exam total hours." Font-Bold="True" ForeColor="Red" ValidationGroup="set_exam" InitialValue="0"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_total_time0" runat="server" ControlToValidate="DropDownList_minute" ErrorMessage="Please enter exam total minute." Font-Bold="True" ForeColor="Red" InitialValue="0" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_total_time1" runat="server" ControlToValidate="DropDownList_second" ErrorMessage="Please enter exam total second." Font-Bold="True" ForeColor="Red" InitialValue="0" ValidationGroup="set_exam"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    <asp:CustomValidator ID="CustomValidator_valid_time" runat="server" ControlToValidate="DropDownList_hours" ErrorMessage="Please select a valid time." Font-Bold="True" Font-Italic="False" ForeColor="Red" OnServerValidate="CustomValidator_valid_time_ServerValidate" ValidationGroup="set_exam"></asp:CustomValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style14">
                                    <br />
                                    <asp:Button ID="Button_set_exam" runat="server" Style="width:100px;" Text="Set Exam" CssClass="btn_save" OnClick="Button_set_exam_Click" ValidationGroup="set_exam" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_update_exam" runat="server" CssClass="btn_change_profile_image" OnClick="btn_update_exam_Click" Text="Update Exam" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button_back" runat="server" Text="Back" CssClass="btn_back" OnClick="Button_back_Click" />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Red" Text="*Only one exam can start(set) at a time."></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="*Exam Expire Date &amp; Time must be greater then one day compare to Exam Date &amp; Time."></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>

                    <br />
                    <asp:Panel ID="Panel_update_exam" runat="server" Visible="False" Width="100%">
                        <br />
                        <asp:Label ID="label_success" runat="server"></asp:Label>
                        <asp:GridView ID="GridView_set_exam_detail" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="5" DataKeyNames="id,fk_subject_id,active" OnPageIndexChanging="GridView_set_exam_detail_PageIndexChanging" PageSize="6" Width="100%" EmptyDataText="There is no exam start for this subject." OnRowCommand="GridView_set_exam_detail_RowCommand" OnRowDataBound="GridView_set_exam_detail_RowDataBound">
                            <Columns>
                                <asp:TemplateField HeaderText="Exam Title">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("exam_title") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Exam Date">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("exam_date_time") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Exam Expire Date">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("exam_expire_date_time") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Exam Total Time">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("exam_total_time") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Total Question">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%# bind("exam_total_question") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Button ID="btn_block_unblock" runat="server" CommandArgument="<%#((GridViewRow)Container).RowIndex%>" CommandName="block_unblock" CssClass="btn_block_unblock" Text="Block / Unblock" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataRowStyle Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Red" />
                            <HeaderStyle CssClass="tbl_header" />
                            <RowStyle CssClass="tbl_row" />
                        </asp:GridView>
                        <br />
                        <br />
                        <asp:Button ID="btn_back" runat="server" CssClass="btn_back" OnClick="btn_back_Click" Text="Back" />
                        <br />
                        <br />
                        <asp:Panel ID="Panel_exam_not_set" runat="server" Visible="False" Width="100%">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Red" Text="There is no exam start for this subject."></asp:Label>
                        </asp:Panel>
                    </asp:Panel>

                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>

