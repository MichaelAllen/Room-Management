﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ConflictingReservationList.ascx.cs" Inherits="RockWeb.Plugins.com_bemaservices.RoomManagement.ConflictingReservationList" %>
<%@ Register TagPrefix="BEMA" Assembly="com.bemaservices.RoomManagement" Namespace="com.bemaservices.RoomManagement.Web.UI.Controls" %>
<asp:UpdatePanel ID="upPanel" runat="server">
    <ContentTemplate>

        <Rock:ModalAlert ID="mdGridWarning" runat="server" />

        <div class="panel panel-block">
            <div class="panel-heading">
                <h1 class="panel-title">Conflicting Reservations</h1>
            </div>
            <div class="panel-body">
                <div class="grid grid-panel">
                    <Rock:NotificationBox ID="nbMessage" runat="server" NotificationBoxType="Warning" Visible="false"></Rock:NotificationBox>
                    <Rock:GridFilter ID="gfSettings" runat="server">
                        <Rock:RockTextBox ID="tbName" runat="server" Label="Reservation Name" />
                        <Rock:RockCheckBoxList ID="cblReservationType" RepeatDirection="Horizontal" Label="Reservation Type" runat="server" DataTextField="Name" DataValueField="Id" />
                        <Rock:RockCheckBoxList ID="cblMinistry" RepeatDirection="Horizontal" Label="Ministry" runat="server" DataTextField="Name" DataValueField="Id" />
                        <Rock:RockCheckBoxList ID="cblApproval" runat="server" Label="Approval Status" RepeatDirection="Horizontal" />
                        <Rock:DateTimePicker ID="dtpStartDateTime" runat="server" Label="Start Date" />
                        <Rock:DateTimePicker ID="dtpEndDateTime" runat="server" Label="End Date" />
                        <Rock:PersonPicker ID="ppCreator" runat="server" Label="Created By" EnableSelfSelection="true" />
                        <Rock:PersonPicker ID="ppEventContact" runat="server" Label="Event Contact" EnableSelfSelection="true" />
                        <Rock:PersonPicker ID="ppAdminContact" runat="server" Label="Admin Contact" EnableSelfSelection="true" />
                        <BEMA:ResourcePicker ID="rpResource" runat="server" Label="Resources" AllowMultiSelect="true" />
                        <Rock:LocationItemPicker ID="lipLocation" runat="server" Label="Locations" AllowMultiSelect="true" />
                    </Rock:GridFilter>
                    <Rock:Grid ID="gReservations" runat="server" RowItemText="Reservation" OnRowSelected="gReservations_Edit" TooltipField="Description">
                        <Columns>
                            <Rock:RockBoundField DataField="Id" HeaderText="Id" Visible="false" />
                            <Rock:RockBoundField DataField="ReservationName" HeaderText="Name" />
                            <Rock:RockBoundField DataField="ReservationType" HeaderText="Type" />
                            <Rock:RockBoundField DataField="Schedule" HeaderText="Schedule" />
                            <Rock:RockBoundField DataField="Locations" HeaderText="Locations" />
                            <Rock:RockBoundField DataField="Resources" HeaderText="Resources" />
                            <Rock:RockBoundField DataField="ApprovalState" HeaderText="Approval State" />
                            <Rock:RockBoundField DataField="Conflicts" HeaderText="Conflicts" HtmlEncode="false" />
                        </Columns>
                    </Rock:Grid>
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
