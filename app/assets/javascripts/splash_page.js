/**
 * Created by max on 2/6/15.
 */


function show_hide(){
    var div = document.getElementById('main_form');
    var text = document.getElementById('show_form').firstChild;
    var errors = document.getElementById('error_explanation');
    //div.style.display = div.style.display == "none" ? "block" : "none";
    if (!div.style.display || div.style.display == "none"){
        div.style.display = "block";
        text.data = "Nevermind.  I am not Brave."
        errors.style.display = "none";
    }else{
        div.style.display = "none";
        text.data = "Become a super hero!"
        errors.style.display = "block";
    }
}