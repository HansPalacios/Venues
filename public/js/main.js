contact_button = document.getElementById("contactbtn");
close_button = document.getElementById("close");
close_button2 = document.getElementById("close2");

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