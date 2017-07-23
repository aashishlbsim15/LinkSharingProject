
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core/css/extra.css">
    <style type="text/css">
        #isE {
        }
    </style>
    <script src="${pageContext.request.contextPath}/resources/core/js/SignUpform.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div style="border:2px solid blue;border-radius:5px;height:55px;">
                <button type="button" class="btn btn-link" style="font-size:20px;margin-top:8px;"><a href="#">Link Sharing</a></button>
                <div class="search" style="width:35%">
                    <i class="glyphicon glyphicon-search "></i>
                    <input type="text" name="search" placeholder="Search" class="form-control" style="padding-left:20px;"/>
                    <i class="glyphicon glyphicon-remove" style="padding-left:5px;"></i>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-7">
            <div class="panel panel-default" style="margin-top:15px;">
                <div class="panel-heading">Recent shares</div>
                <div class="panel-body">
                    <div>
                        <div class="col-md-2">
                            <img src="${pageContext.request.contextPath}/resources/core/images/new.jpg" alt="image-icon" class="img-thumbnail">
                        </div>
                        <span class="col-md-3" style="margin-left:-15px;">Uday Pratap Singh</span>
                        <span class="col-md-5" style="opacity:0.5;">@uday 5 min</span>
                        <span><a id="grails">Grails</a></span>
                        <div>
                            <span>Lorem ipsum dolor sit amnet, consectetur adipiscing elit.Something extra text to be displayed</span>
                        </div>
                        <div>
                            <div class="col-md-2">
                                <i class="fa fa-facebook-square" style="margin-left:-15px;"></i>
                                <i class="fa fa-tumblr"></i>
                                <i class="fa fa-google-plus"></i>
                            </div>
                            <span style="margin-left:295px;"><a>View Post</a></span>
                        </div>
                    </div>
                    <div>

                        <div class="col-md-2">
                            <img src="${pageContext.request.contextPath}/resources/core/images/new.jpg" alt="image-icon" class="img-thumbnail">
                        </div>
                        <span class="col-md-3" style="margin-left:-15px;">Uday Pratap Singh</span>
                        <span class="col-md-5" style="opacity:0.5;">@uday 10 min</span>
                        <span><a id="grails">Grails</a></span>
                        <div>
                            <span>Lorem ipsum dolor sit amnet, consectetur adipiscing elit.Something extra text to be displayed</span>
                        </div>
                        <div>
                            <div class="col-md-2">
                                <i class="fa fa-facebook-square" style="margin-left:-15px;"></i>
                                <i class="fa fa-tumblr"></i>
                                <i class="fa fa-google-plus"></i>
                            </div>
                            <span style="margin-left:295px;"><a>View Post</a></span>
                        </div>
                    </div>

                </div>
            </div>

            <div class="panel panel-default" style="margin-top:15px;">
                <div class="panel-heading">Top posts
                    <div style="display: inline;margin-left: 475px;">
                        <select class="selectpicker" >
                            <option>Today</option>
                            <option>1 Day</option>
                            <option>1 Week</option>
                            <option>1 Year</option>
                        </select>
                    </div>

                </div>
                <div class="panel-body">
                    <div class="col-md-2">
                        <img src="${pageContext.request.contextPath}/resources/core/images/new.jpg" alt="image-icon" class="img-thumbnail">
                    </div>
                    <span class="col-md-3" style="margin-left:-15px;">Uday Pratap Singh</span>
                    <span class="col-md-5" style="opacity:0.5;">@uday 21 jun 2014</span>
                    <span><a id="grails">Grails</a></span>
                    <div>
                        <span>Lorem ipsum dolor sit amnet, consectetur adipiscing elit.Something extra text to be displayed</span>
                    </div>
                    <div>
                        <div class="col-md-2">
                            <i class="fa fa-facebook-square" style="margin-left:-15px;"></i>
                            <i class="fa fa-tumblr"></i>
                            <i class="fa fa-google-plus"></i>
                        </div>
                        <span style="margin-left:295px;"><a>View Post</a></span>
                    </div>
                </div>
            </div>

        </div>





        <div class="col-md-5">

            <div class="panel panel-default" style="margin-top:15px;">
                <div class="panel-heading">Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" action="Login" method="post">
                        <div class="form-group" >
                            <label class="control-label col-md-4" >Email/Username*</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="email" placeholder="Enter username" name="username" required><p>${error}</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4" >Password*</label>
                            <div class="col-md-8">
                                <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" required>
                            </div>
                        </div>
                        <button type="button" class="btn btn-link" style="margin-top: 25px;">Forgot Password</button>
                        <button type="submit" class="btn btn-default" style="margin-left: 100px;margin-top: 25px;">Login</button>
                    </form>
                </div>
            </div>

            <div class="panel panel-default" style="margin-top:15px;">
                <div class="panel-heading">Register</div>
                <div class="panel-body">
                    <form class="form-horizontal" action="registration" method="post" id="signupForm" name="regF">
                        <div class="form-group" >
                            <label  class="control-label col-md-4">First Name*</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="firstName" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Last Name*</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lastName" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Email</label>
                            <div class="col-md-8">
                                <input type="email" class="form-control" id="regemail" placeholder="Enter email" name="email" required/><span id="emailmessage"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Username*</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" onblur="checkusername()" required/><span id="isE"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Password*</label>
                            <div class="col-md-8">
                                <input type="password" class="form-control" id="regpassword" placeholder="Enter password" name="password" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4"> Confirm Password*</label>
                            <div class="col-md-8">
                                <input type="password" class="form-control" id="confpassword" placeholder="Confirm password" name="cnfpassword" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Photo*</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="photo" name="photo" />
                            </div>
                            <label class="btn btn-default  btn-sm col-md-11" id="browse" style="  margin-left: -95px;width: 20%;line-height: 22px;">
                                Browse<input type="file" style="display:none;" name="file"/>
                            </label>
                        </div>


                        <button type="submit"  id="register"  class="btn btn-default" style="margin-left: 280px;margin-top: 15px;">Register</button>
                    </form>
                </div>


            </div>
        </div>

    </div>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script>
function checkusername()
{

var v=document.getElementById('username').value;

if(v!=null){
var url="/exists?username="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}catch(e){alert("Unable to connect to server");}
}
else
document.getElementById('isE').innerHTML="User name can't be null";


}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById("isE").innerHTML=val;
if(val==="User already exists")
{
userflag=1;
document.getElementById("register").disabled=true;
}
else
{
userflag=0;
document.getElementById("register").disabled=false;
}
}
}

</script>
</body>
</html>
