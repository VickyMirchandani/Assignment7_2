<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment7_2.aspx.cs" Inherits="Assignment7_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <button onclick="onButtonmailClick();">Mail helper Note</button>
         <button onclick="onButtonNameClick();">Name Helper</button>
         <button onclick="onButtonAgeClick();">Age Helper</button>

    <div class="container">
    <label><b>Email</b></label> 
    <input type="text" placeholder="Enter Email Id" id="myemail" name ="Email" required="required"/>

    <label><b>Name</b></label>
    <input type="text" placeholder="Enter your Name" name="Name" id="myname" required="required"/>

    <label><b>Age</b></label>
    <input type="text" placeholder= "Enter Age" name ="Age" id ="myage" required="required" />
  </div>

    
    <div>
 <script type="text/javascript">
     function showemailhelper()
    {
         var mailnote = "Please enter your Email ID";
         return function () {
             document.getElementById("myemail").placeholder = "Enter your Email Id";
         };
     };


        function shownamehelper() {
            var namenote = "Please enter your name";


            return function () {
                document.getElementById("myname").placeholder = "Enter your Name";
            };
     };

        function showagehelper() {
            var agenote = "Please enter your age";

            return function () {

                document.getElementById("myage").placeholder = "Enter your Age";
            };

     };

        var emailhelpernote = showemailhelper;
        var namehelpernote = shownamehelper;
        var agehelpernote = showagehelper;



   function onButtonmailClick() {

        var mailnote = emailhelpernote();
        
        
     }

   function onButtonNameClick() {

        var namenote = namehelpernote();

     }

   function onButtonAgeClick() {

      var agenote = agehelpernote();
     }

    </script>
    </div>
    </form>
</body>
</html>
