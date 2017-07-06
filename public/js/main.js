contact_button = document.getElementById("contactbtn");
close_button = document.getElementById("close");
close_button2 = document.getElementById("close2");
//edit toggle
edit = document.getElementById("edit");
edit_input = document.getElementById("edit-input");    
acct_info = document.getElementById("acct-info");
//edit toggle end
contact = document.getElementById("contact");
signin = document.getElementById("signin");
signinbox = document.getElementById("signinbox");


signin.addEventListener("click", function(){
    signinbox.style.display = "block";
});
close_button.addEventListener("click", function(){
    signinbox.style.display = "none";
});

contact_button.addEventListener("click", function(){
    contact.style.display = "block";
});
close_button2.addEventListener("click", function(){
    contact.style.display = "none";
});

//js for profile page
edit.addEventListener("click", function(){
    edit_input.style.display = "inline-block";
    acct_info.style.display = "none";
});
// end js profile
