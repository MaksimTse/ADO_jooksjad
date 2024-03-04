<%@ Page Title="Jooksjad tabelina" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ADO_jooksjad.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Jooksjad seisuga 04.03.2024</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="JooksmineId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="JooksmineId" HeaderText="JooksmineId" InsertVisible="False" ReadOnly="True" SortExpression="JooksmineId" />
                    <asp:BoundField DataField="Eesnimi" HeaderText="Eesnimi" SortExpression="Eesnimi" />
                    <asp:BoundField DataField="Perenimi" HeaderText="Perenimi" SortExpression="Perenimi" />
                    <asp:BoundField DataField="Tulemus" HeaderText="Tulemus" SortExpression="Tulemus" />
                    <asp:BoundField DataField="Veergrupp" HeaderText="Veergrupp" SortExpression="Veergrupp" />
                    <asp:BoundField DataField="Linn" HeaderText="Linn" SortExpression="Linn" />
                    <asp:BoundField DataField="Voistlusnimi" HeaderText="Voistlusnimi" SortExpression="Voistlusnimi" />
                    <asp:BoundField DataField="Paev" HeaderText="Paev" SortExpression="Paev" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JooksjadConnectionString2 %>" DeleteCommand="DELETE FROM [JooksmineSet] WHERE [JooksmineId] = @JooksmineId" InsertCommand="INSERT INTO [JooksmineSet] ([Eesnimi], [Perenimi], [Tulemus], [Veergrupp], [Voistlus_VoistlusId]) VALUES (@Eesnimi, @Perenimi, @Tulemus, @Veergrupp, @Voistlus_VoistlusId)" SelectCommand="SELECT JooksmineSet.JooksmineId, JooksmineSet.Eesnimi, JooksmineSet.Perenimi, JooksmineSet.Tulemus, JooksmineSet.Veergrupp, VoistlusSet.Linn, VoistlusSet.Voistlusnimi, VoistlusSet.Paev FROM JooksmineSet INNER JOIN VoistlusSet ON JooksmineSet.Voistlus_VoistlusId = VoistlusSet.VoistlusId" UpdateCommand="UPDATE [JooksmineSet] SET [Eesnimi] = @Eesnimi, [Perenimi] = @Perenimi, [Tulemus] = @Tulemus, [Veergrupp] = @Veergrupp, [Voistlus_VoistlusId] = @Voistlus_VoistlusId WHERE [JooksmineId] = @JooksmineId">
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
    </main>
</asp:Content>
