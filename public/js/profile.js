//js for profile page
edit = document.getElementById("edit");
edit_input = document.getElementById("edit-input");    
acct_info = document.getElementById("acct-info");
edit.addEventListener("click", function(){
    edit_input.style.display = "inline-block";
    acct_info.style.display = "none";
});
// end js profile