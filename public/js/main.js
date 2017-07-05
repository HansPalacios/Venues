contact_button = document.getElementById("contactbtn");
close_button = document.getElementById("close");
close_button2 = document.getElementById("close2");
//edit toggle
edit = document.getElementById("edit");
edit_input = document.getElementById("edit_input");    
acct_info = document.getElementById("acct_info");
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
<<<<<<< HEAD

// edit = document.getElementById("edit");
// edit_input = document.getElementById("edit_input");	
// acct_info = document.getElementById("acct_info")
// edit.addEventListener("click", function(){
// 	edit_input.style.display = "block";
// 	acct_info.style.display = "none";
// });
=======
//js for profile page
edit.addEventListener("click", function(){
    edit_input.style.display = "block";
    acct_info.style.display = "none";
});
// end js profile
>>>>>>> 0082f98e9017889fbbc8ce1ae6c75e6fa13df3bd
