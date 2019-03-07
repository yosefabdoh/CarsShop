<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarsShop.Register" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0" dir="rtl">


<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">

<head runat="server">
    <title>التسجيل</title>
    <%--<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" dir="rtl">--%>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <style dir="rtl">
        * {
            box-sizing: border-box;
        }

        body {
            background-color: #f1f1f1;
        }

        #regForm {
            background-color: #ffffff;
            margin: 100px auto;
            font-family: Raleway;
            padding: 40px;
            width: 20%;
            min-width: 300px;
        }

        h1 {
            text-align: center;
        }

        input {
            padding: 10px;
            width: 100%;
            font-size: 17px;
            font-family: Raleway;
            border: 1px solid #aaaaaa;
        }

            /* Mark input boxes that gets an error on validation: */
            input.invalid {
                background-color: #ffdddd;
            }

        /* Hide all steps by default: */
        .tab {
            display: none;
        }

        button {
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 17px;
            font-family: Raleway;
            cursor: pointer;
        }


        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        button:hover {
            opacity: 0.8;
        }

        #prevBtn {
            background-color: #bbbbbb;
        }

        /* Make circles that indicate the steps of the form: */
        .step {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbbbbb;
            border: none;
            border-radius: 50%;
            display: inline-block;
            opacity: 0.5;
        }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }
    </style>
</head>

<body>

    <form id="regForm"  method="post" runat="server">
        <h1><u>التسجيل</u></h1>
        <!-- One "tab" for each step in the form: -->
        <div class="tab" dir="rtl">
            المستخدم:
    <p>
        <asp:TextBox ID="txtUserName" runat="server" oninput="this.className = ''" name="fname" placeholder="اسم المستخدم..."></asp:TextBox>
        <asp:Label ID="Labmes" dir="ltr" runat="server" ForeColor="Red"></asp:Label>
    </p>
            <br />
            <label dir="rtl">الاسم:</label>

            <p>
                <asp:TextBox ID="txtFullname" runat="server" oninput="this.className = ''" name="lname" placeholder="الأسم كامل..."></asp:TextBox>
            </p>
        </div>



        <!--معلومات التواصل الصفحه الثانيه-->
        <div class="tab">
            <br />
            <label dir="rtl">البريد:</label>

            <p>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="البريد الإلكتروني..." oninput="this.className = ''" name="email" TextMode="Email"></asp:TextBox>
            </p>
            <br />
            <label dir="rtl">الهاتف:</label>

            <p>
                <asp:TextBox ID="txtPhone" runat="server" placeholder="رقم الهاتف..." MaxLength="9" TextMode="Phone"></asp:TextBox>
            </p>
        </div>
        <div class="tab" dir="rtl">
            <br />
            <label for="country" dir="rtl">المحافظة:</label>

            <asp:DropDownList ID="DrowbCitiesOfYemenChangeRegester" runat="server">
                <asp:ListItem Selected="False">صنعاء</asp:ListItem>
                <asp:ListItem Selected="False">عدن</asp:ListItem>
                <asp:ListItem Selected="False">الحديدة</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <label dir="rtl">العنوان:</label>

            <p>
                <asp:TextBox ID="txtAdreess" runat="server" placeholder="العنوان..." oninput="this.className = ''" name="email" TextMode="SingleLine"></asp:TextBox>
            </p>



        </div>
        <div class="tab">
            إضافة كلمة المرور:

    <p>
        <asp:TextBox ID="txtpassw" runat="server" placeholder="كلمة المرور..." oninput="this.className = ''" name="pword" type="password" TextMode="SingleLine"></asp:TextBox>

    </p>

            <br />
            <label for="country" dir="rtl">:نوع المستخدم</label>
            <asp:DropDownList ID="DropUserKind" runat="server">
                <asp:ListItem Selected="False">فرد</asp:ListItem>
                <asp:ListItem Selected="False">معرض</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="overflow: auto;">
            <div style="float: right;" dir="rtl">


                <button id="nextBtn" type="button" onclick="nextPrev(1)">التالي</button>

                <button id="prevBtn" type="button" onclick="nextPrev(-1)" dir="rtl">
                    <asp:LinkButton ID="Button1" CssClass="button" type="button" OnClick="Button1_Click" runat="server">تأكيد</asp:LinkButton>

                </button>
            </div>

        </div>
        <!-- Circles which indicates the steps of the form: -->
        <div style="text-align: center; margin-top: 40px;">
            <span class="step"></span>
            <span class="step"></span>
            <span class="step"></span>
            <span class="step"></span>
        </div>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script>
        var currentTab = 0; // Current tab is set to be the first tab (0)
        showTab(currentTab); // Display the crurrent tab

        function showTab(n) {
            // This function will display the specified tab of the form...
            var x = document.getElementsByClassName("tab");
            x[n].style.display = "block";
            //... and fix the Previous/Next buttons:
            if (n == 0) {
                document.getElementById("prevBtn").style.display = "none";
            } else {
                document.getElementById("prevBtn").style.display = "inline";
            }
            if (n == (x.length - 1)) {
                document.getElementById("nextBtn").innerHTML = "none";
            } else {
                document.getElementById("nextBtn").innerHTML = "التالي";
            }
            //... and run a function that will display the correct step indicator:
            fixStepIndicator(n)
        }

        function nextPrev(n) {
            // This function will figure out which tab to display
            var x = document.getElementsByClassName("tab");
            // Exit the function if any field in the current tab is invalid:
            if (n == 1 && !validateForm()) return false;
            // Hide the current tab:
            x[currentTab].style.display = "none";
            // Increase or decrease the current tab by 1:
            currentTab = currentTab + n;
            // if you have reached the end of the form...
            if (currentTab >= x.length) {
                // ... the form gets submitted:
                document.getElementById("regForm").submit();
                return false;
            }
            // Otherwise, display the correct tab:
            showTab(currentTab);
        }

        function validateForm() {
            // This function deals with validation of the form fields
            var x, y, i, valid = true;
            x = document.getElementsByClassName("tab");
            y = x[currentTab].getElementsByTagName("input");
            // A loop that checks every input field in the current tab:
            for (i = 0; i < y.length; i++) {
                // If a field is empty...
                if (y[i].value == "") {
                    // add an "invalid" class to the field:
                    y[i].className += " invalid";
                    y[i].className += " invalid";
                    // and set the current valid status to false
                    valid = false;
                }
            }
            // If the valid status is true, mark the step as finished and valid:
            if (valid) {
                document.getElementsByClassName("step")[currentTab].className += " finish";
            }
            return valid; // return the valid status
        }

        function fixStepIndicator(n) {
            // This function removes the "active" class of all steps...
            var i, x = document.getElementsByClassName("step");
            for (i = 0; i < x.length; i++) {
                x[i].className = x[i].className.replace(" active", "");
            }
            //... and adds the "active" class on the current step:
            x[n].className += " active";
        }
        
    </script>

</body>

</html>
