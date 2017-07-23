$(function (){
//language=JQuery-CSS
    $('#signupForm').validate({

rules:{
    firstName: {

        accept: "[0-9]+"
    },
    lastName:{
        accept: "[0-9]+"

    },
    password:{
        required:true,
        minlength:5
    },
    cnfpassword:{
        required:true,
        minlength:5,
        equalTo:"#password"
    }
},
    messages:{
    fname:"please enter a letter",
        lname:"please enter a letter",
        password:{
        required:"please enter your password",
            minlength:"password must be 5 character long"
        },
        cnfpassword:{
            required:"please enter your password",
            minlength:"password must be  character long",
            equalTo:"password must match"
        }

    }
});
});


