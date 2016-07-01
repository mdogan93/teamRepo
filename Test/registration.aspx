<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Last but not most step</title>
    <link rel="stylesheet" href="css/registration.css" />
</head>
<body>


    <form id="form1" runat="server">
        <div class="regForm">
            <h2>GG</h2>
            <!--Registration Form Starts here -->

            <div class="left-regForm">
                <!--  Username Starts Here  -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Username "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox ID="TextBox1" runat="server"> </asp:TextBox>
                    </div>
                    <span> </span>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="name"
                        ErrorMessage="Please provide your username">
                    </asp:RequiredFieldValidator>
                </div>
                <!--  Username Ends Here  -->

                <!--  Password Starts Here -->
                <div class="segment">
                    <div class="segment-label">

                        <asp:Label runat="server" Text="Password "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox TextMode="Password" Display="None" MaxLength="16" ID="TextBox2" runat="server"> </asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server"  ControlToValidate="surname"
                        ErrorMessage="Please provide password">
                    </asp:RequiredFieldValidator>
                </div>
                <!-- Password Ends Here  -->

                <!-- E-mail Starts Here  -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="E-mail "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox ID="email" runat="server"> </asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ToolTip="Required" ErrorMessage="Enter a valid email address"
                        ValidationExpression="^[a-z0-9](\.?[a-z0-9_-]){0,}@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator runat="server" ToolTip="Required" ErrorMessage="Provide an e-mail address"
                        ControlToValidate="email"></asp:RequiredFieldValidator>
                </div>
                <!-- E-mail Ends Here  -->

                <!-- Phone Starts Here   -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Phone "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox ID="TextBox3" runat="server"> </asp:TextBox>
                    </div>
                </div>
                <!-- Phone Ends Here -->
            </div>
            <!-- Left-regForm Ends Here-->


            <div class="right-regForm">

                <!-- Name Starts Here -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Name "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox ID="name" runat="server"> </asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="name"
                        ErrorMessage="Please provide your name">
                    </asp:RequiredFieldValidator>
                </div>
                <!-- Name Ends Here -->

                <!-- SurName Starts Here  -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Surname "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:TextBox ID="surname" runat="server"> </asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="surname"
                        ErrorMessage="Please provide your surname">
                    </asp:RequiredFieldValidator>
                </div>
                <!-- SurName Ends Here  -->

                <!-- Gender Starts Here -->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Gender "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:RadioButtonList CssClass="radioButtonList" ID="gender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="gender"
                        ErrorMessage="Please choose your gender">
                    </asp:RequiredFieldValidator>

                </div>
                <!-- SurName Ends Here  -->

                <!-- Favorite Team Starts Here-->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Favorite Team "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:DropDownList ID="favTeam" runat="server">
                            <asp:ListItem Value="ch">Pick a team...</asp:ListItem>
                            <asp:ListItem Value="gs">Galatasaray</asp:ListItem>
                            <asp:ListItem Value="fb">Fenerbahçe</asp:ListItem>
                            <asp:ListItem Value="Bursa">Bursa</asp:ListItem>
                            <asp:ListItem Value="İstanbul">İstanbul</asp:ListItem>
                            <asp:ListItem Value="İzmir">İzmir</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="checkCity"
                        runat="server" ControlToValidate="favTeam"
                        ErrorMessage="Please choose your City">
                    </asp:RequiredFieldValidator>
                </div>
                <!-- Favorite Team Ends Here-->

                <!-- Birthday Starts Here-->
                <div class="segment">
                    <div class="segment-label">
                        <asp:Label runat="server" Text="Birthday "></asp:Label>
                    </div>
                    <div class="segment-value">
                        <asp:DropDownList ID="dateDay" runat="server" AutoPostBack="True"></asp:DropDownList>
                        <asp:DropDownList ID="dateMonth" runat="server">
                            <asp:ListItem Value="00">-Month-</asp:ListItem>
                            <asp:ListItem Value="01">January</asp:ListItem>
                            <asp:ListItem Value="02">February</asp:ListItem>
                            <asp:ListItem Value="03">March</asp:ListItem>
                            <asp:ListItem Value="04">April</asp:ListItem>
                            <asp:ListItem Value="05">May</asp:ListItem>
                            <asp:ListItem Value="06">June</asp:ListItem>
                            <asp:ListItem Value="07">July</asp:ListItem>
                            <asp:ListItem Value="08">August</asp:ListItem>
                            <asp:ListItem Value="09">September</asp:ListItem>
                            <asp:ListItem Value="10">October</asp:ListItem>
                            <asp:ListItem Value="11">November</asp:ListItem>
                            <asp:ListItem Value="12">December</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:DropDownList ID="dateYear" runat="server" AutoPostBack="True"></asp:DropDownList>
                </div>
                <!-- Birthday Ends Here-->

                <div class="segment">
                    <div class="segment-label">
                        <asp:Label ID="Label1" runat="server" />
                    </div>
                    <div class="segment-value">
                        <asp:Button ID="submit" Text="Submit" OnClick="submitInfo" runat="server" />
                    </div>
                </div>
            </div>
            <!-- Right Panel Ends Here-->
        </div>
        <!-- Reg Form Ends Here -->
    
   
    </form>


</body>
</html>
