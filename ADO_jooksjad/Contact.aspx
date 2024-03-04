<%@ Page Title="Jooksjade lisamine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ADO_jooksjad.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Lisa uus jooksja</h3>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="JooksmineId" DataSourceID="SqlDataSource_jooksjad" DefaultMode="Insert" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <Fields>
                <asp:BoundField DataField="JooksmineId" HeaderText="JooksmineId" InsertVisible="False" ReadOnly="True" SortExpression="JooksmineId" />
                <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
                <asp:BoundField DataField="Perenimi" HeaderText="Perenimi" SortExpression="Perenimi" />
                <asp:BoundField DataField="Tulemus" HeaderText="Tulemus" SortExpression="Tulemus" />
                <asp:BoundField DataField="Veergrupp" HeaderText="Veergrupp" SortExpression="Veergrupp" />
                <asp:TemplateField HeaderText="Voistlus_VoistlusId" SortExpression="Voistlus_VoistlusId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Voistlus_VoistlusId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_voistlus" DataTextField="Voistlusnimi" DataValueField="VoistlusId" SelectedValue='<%# Bind("Voistlus_VoistlusId") %>'>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_voistlus" runat="server" ConnectionString="<%$ ConnectionStrings:JooksjadConnectionString2 %>" SelectCommand="SELECT * FROM [VoistlusSet]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource_jooksjad" runat="server" ConnectionString="<%$ ConnectionStrings:JooksjadConnectionString2 %>" DeleteCommand="DELETE FROM [JooksmineSet] WHERE [JooksmineId] = @JooksmineId" InsertCommand="INSERT INTO [JooksmineSet] ([Eesnimi], [Perenimi], [Tulemus], [Veergrupp], [Voistlus_VoistlusId]) VALUES (@Eesnimi, @Perenimi, @Tulemus, @Veergrupp, @Voistlus_VoistlusId)" SelectCommand="SELECT * FROM [JooksmineSet]" UpdateCommand="UPDATE [JooksmineSet] SET [Eesnimi] = @Eesnimi, [Perenimi] = @Perenimi, [Tulemus] = @Tulemus, [Veergrupp] = @Veergrupp, [Voistlus_VoistlusId] = @Voistlus_VoistlusId WHERE [JooksmineId] = @JooksmineId">
            <DeleteParameters>
                <asp:Parameter Name="JooksmineId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Tulemus" Type="Int32" />
                <asp:Parameter Name="Veergrupp" Type="String" />
                <asp:Parameter Name="Voistlus_VoistlusId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Eesnimi" Type="String" />
                <asp:Parameter Name="Perenimi" Type="String" />
                <asp:Parameter Name="Tulemus" Type="Int32" />
                <asp:Parameter Name="Veergrupp" Type="String" />
                <asp:Parameter Name="Voistlus_VoistlusId" Type="Int32" />
                <asp:Parameter Name="JooksmineId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
