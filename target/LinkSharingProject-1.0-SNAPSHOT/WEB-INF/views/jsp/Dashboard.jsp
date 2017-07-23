<%--
  Created by IntelliJ IDEA.
  User: ashish
  Date: 19/7/17
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/core/images/homeLogo.png">
    <link href="linkSharing.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link href="linkSharing.js" rel="script">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.css">
</head>
<body>

<!--navbar-collapse-responsive-->
<nav class="navbar navbar-default navbackground">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed makingcircle" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">
            <img alt="logo" src="../resourse/logo.png" class="logo">
        </a>
        <a class="navbar-brand" href="#">
            Link Sharing
        </a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        <ul class="nav navbar-nav navbar-right">
            <li class=" glyphicon glyphicon-user center-block pull-right"
                style="font-size: 2em ; padding-right: 5px;padding-top: 10px"></li>
            <span class="glyphicon glyphicon-envelope" style="font-size: 2em ; padding-right: 8px" data-toggle="modal" data-target="#sendMail"></span>
            <i class="fa fa-comments" style="font-size: 3em ; padding-right: 8px" data-toggle="modal" data-target="#createTopic"></i>
            <span class=" glyphicon glyphicon-paperclip" style="font-size: 2em ; padding-right: 8px"></span>
            <span class=" glyphicon glyphicon-file" style="font-size: 2em ; padding-right: 8px" ></span>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false"><span class="caret"></span> &nbsp; Dropdown</a>
                <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-right">
            <div class="input-group">
                        <span class="input-group-btn">
                        <button type="submit" class="btn btn-default pull-left">
								<span class="glyphicon glyphicon-search">
									<span class="sr-only">Search</span>
								</span>
                        </button>
                        <input type="search" class="form-control" name="search" id="search"
                               style="width: 270px; background-color: #e5e5e5;" placeholder="Search">
                            <button type="reset" class="btn btn-default ">
								<span class="glyphicon glyphicon-remove">
									<span class="sr-only">Close</span>
								</span>
							</button>
						</span>
            </div>
        </form>
    </div><!-- /.navbar-collapse -->


    <div class="col-md-5 col-xs-12">
        <div class="panel panel-default">

            <div class="panel-body" style="padding: 10px">
                <div class="col-md-3 col-xs-12">
                    <img src="../resourse/profilePic.jpg" class="img-rounded img-responsive center-block profileImage">
                </div>

                <div class="col-md-9 col-xs-12 center-block">
                    <div class="row"><!--username-->
                        <div class="col-xs-6 col-md-6"><!--username-->
                            <b class="">First Name
                                Last Name</b> <i>User Name</i>
                        </div><!--./username-->
                    </div><!--/.username-->
                    <div><!--content-->
                        <br/>
                    </div><!--/.content-->
                    <div class="row"><!--import link-->
                        <div class="col-xs-6 col-md-6"><!--socialConnect-->
                            Subscriptions<br/>noOfSubscriptions
                        </div><!--./socialConnect-->
                        <div class="col-xs-6 col-md-6"><!--viewPost-->
                            <a href="#" class="pull-right viewPost">Topics <br/>noOfCreatedTopics</a>
                        </div><!--./viewPost-->
                    </div><!--/.import link-->
                </div>
            </div>
            <br/>
        </div><!--recentPosts-->

        <div class="panel panel-default">

            <div class="row">
                <div class="panel-heading" style="height: 50px;">
                    <h4 class="panel-title pull-left" style="padding-top: 7.5px;padding-left: 10px">Subscription</h4>
                    <a class="pull-right" style="padding-right: 10px">view all</a>
                </div>
                <hr/>
                <div class="panel-body" style="padding: 10px">
                    <div class="col-md-3 col-xs-12">
                        <img src="../resourse/profilePic.jpg"
                             class="img-rounded img-responsive center-block profileImage">
                    </div>

                    <div class="col-md-9 col-xs-12 center-block">
                        <div>
                            <a>Grails</a>(Private)
                            <br/><br/>
                        </div>

                        <div class="row"><!--username-->
                            <div class="col-xs-3 col-md-3"><!--username-->
                                <i>@Agni</i><br/><a>Subscribe</a>
                            </div><!--./username-->

                            <div class="col-xs-3 col-md-3 center-block"><!--socialConnect-->
                                Subscriptions<br/>60
                            </div><!--./socialConnect-->
                            <div class="col-xs-3 col-md-3 pull-right"><!--viewPost-->
                                <a href="#" class=" viewPost">Topics <br/> 30</a>
                            </div><!--./viewPost-->

                        </div><!--/.username-->

                    </div>
                </div>
                <div class="row">
                    <span class=" glyphicon glyphicon-file envIcon" style="padding-right: 15px"></span>
                    <span class=" glyphicon glyphicon-file envIcon"></span>
                    <a><span
                            class=" glyphicon glyphicon-trash envIcon"></span></a>

                    <select class="form-control access pull-right"
                            style="margin-left: 10px; margin-right: 10px; width: 30%">
                        <option value="">PRIVATE</option>
                        <option value="">PUBLIC</option>
                    </select>

                    <select class="form-control pull-right" style="width: 20%;background-color: rgba(0,0,0,0.15);">
                        <option value="">Private</option>
                        <option value="">Public</option>
                    </select>
                </div>
                <hr/>
                <div class="row">
                    <div class="panel-body" style="padding: 10px">
                        <div class="col-md-3 col-xs-12">
                            <img src="../resourse/profilePic.jpg"
                                 class="img-rounded img-responsive center-block profileImage">
                        </div>

                        <div class="col-md-9 col-xs-12 center-block">
                            <div>
                                <a>Grails</a>(Private)
                                <br/><br/>
                            </div>

                            <div class="row"><!--username-->
                                <div class="col-xs-3 col-md-3"><!--username-->
                                    <i>@Agni</i><br/><a>Subscribe</a>
                                </div><!--./username-->

                                <div class="col-xs-3 col-md-3 center-block"><!--socialConnect-->
                                    Subscriptions<br/>60
                                </div><!--./socialConnect-->
                                <div class="col-xs-3 col-md-3 pull-right"><!--viewPost-->
                                    <a href="#" class=" viewPost">Topics <br/> 30</a>
                                </div><!--./viewPost-->

                            </div><!--/.username-->

                        </div>
                    </div>
                    <div class="row">
                        <span class=" glyphicon glyphicon-file envIcon" style="padding-right: 25px"></span>
                        <span class=" glyphicon glyphicon-file envIcon"></span>
                        <a><span
                                class=" glyphicon glyphicon-trash envIcon"></span></a>

                        <select class="form-control access pull-right"
                                style="margin-left: 10px; margin-right: 10px; width: 30%">
                            <option value="">PRIVATE</option>
                            <option value="">PUBLIC</option>
                        </select>

                        <select class="form-control pull-right" style="width: 20%;background-color: rgba(0,0,0,0.15);">
                            <option value="">Private</option>
                            <option value="">Public</option>
                        </select>
                    </div>
                    <hr/>
                </div><!--trendingtopic-->
            </div>
        </div>
        <br/>

        <div class="panel panel-default">

            <div class="row">
                <div class="panel-heading" style="height: 50px;">
                    <h4 class="panel-title pull-left" style="padding-top: 7.5px;padding-left: 10px">Trending Topic</h4>
                    <a class="pull-right" style="padding-right: 10px">view all</a>
                </div>
                <hr/>
                <div class="panel-body" style="padding: 10px">
                    <div class="col-md-3 col-xs-12">
                        <img src="../resourse/profilePic.jpg"
                             class="img-rounded img-responsive center-block profileImage">
                    </div>

                    <div class="col-md-9 col-xs-12 center-block">
                        <div>
                            <a>Grails</a>(Private)
                            <br/><br/>
                        </div>

                        <div class="row"><!--username-->
                            <div class="col-xs-3 col-md-3"><!--username-->
                                <i>@Agni</i><br/><a>Subscribe</a>
                            </div><!--./username-->

                            <div class="col-xs-3 col-md-3 center-block"><!--socialConnect-->
                                Subscriptions<br/>60
                            </div><!--./socialConnect-->
                            <div class="col-xs-3 col-md-3 pull-right"><!--viewPost-->
                                <a href="#" class=" viewPost">Topics <br/> 30</a>
                            </div><!--./viewPost-->

                        </div><!--/.username-->

                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="panel-body" style="padding: 10px">
                        <div class="row">
                            <div class="col-md-3 col-xs-12">
                                <img src="../resourse/profilePic.jpg"
                                     class="img-rounded img-responsive center-block profileImage" style="padding-left: 10px">
                            </div>

                            <div class="col-md-9 col-xs-12 center-block" style="padding-right: 50px">
                                <div class="row"><!--username-->
                                    <div class="col-xs-3 col-md-3"><!--username-->
                                        <input type="text" placeholder="Topic" style="width: 100px">
                                    </div><!--./username-->

                                    <div class="col-xs-3 col-md-3 pull-right"><!--viewPost-->
                                        <button class="pull-right">Cancel</button>
                                    </div><!--./viewPost-->
                                    <div class="col-xs-3 col-md-3 pull-right"><!--socialConnect-->
                                        <button class="pull-right">Save</button>
                                    </div><!--./socialConnect-->
                                </div><!--/.username-->
                                <br/>

                                <div class="row"><!--content-->
                                    <div class="col-xs-4 col-md-4"><!--button-->
                                        @agni <br/> <a>unsbscribe</a>
                                    </div><!--./button-->
                                    <div class="col-xs-4 col-md-4"><!--button-->
                                        Subscriptions<br/>60
                                    </div><!--./button-->
                                    <div class="col-xs-4 col-md-4"><!--button-->
                                        Topics <br/> 30</a>
                                    </div><!--./button-->
                                </div><!--/.content-->
                                <br/>
                            </div>
                        </div>

                        <div class="row">
                            <!-- <span class="glyphicon glyphicon-envelope envIcon"></span>
                             <span class=" glyphicon glyphicon-file envIcon"></span>
                             <span class=" glyphicon glyphicon-trash envIcon"></span>-->
                            <span class=" glyphicon glyphicon-file envIcon" style="padding-right: 25px"></span>
                            <span class=" glyphicon glyphicon-file envIcon"></span>
                            <a><span
                                    class=" glyphicon glyphicon-trash envIcon"></span></a>

                            <select class="form-control access pull-right" style="margin-left: 10px;background-color:#2aabd2; width: 30%">
                                <option value="">Profile</option>
                                <option value="">Post</option>
                                <option value="">Logout</option>
                            </select><!--/.access-->

                            <select class="form-control access pull-right" style="margin-left: 10px;background-color:#2aabd2; width: 30%">
                                <option value="">Profile</option>
                                <option value="">Post</option>
                                <option value="">Logout</option>
                            </select><!--/.serious-->
                        </div>
                    </div>
                    <hr/>
                </div><!--trendingtopic-->
            </div>
        </div>
    </div>
    <div class="col-md-7 col-xs-12 paginate">
        <div class="panel panel-default">
            <div class="panel-heading" style="height: 60px;">
                <h4 class="panel-title pull-left" style="padding-top: 7.5px;">Inbox</h4>

                <div class="input-group pull-right" style="margin-right: -30px;">
                    <input type="text" name="focus" required class="search-box" placeholder="Search"
                           style="width: 50%;margin-right:0px
			       ;background-color: white !important;border-color: black;"/>
                </div>
            </div>
            <div class="panel-body paginate">
                <div class="col-md-2 col-xs-12">
                    <img src="../resourse/profilePic.jpg"
                         class="img-rounded img-responsive center-block profileImage">
                </div>

                <div class="col-md-10 col-xs-12 center-block">
                    <div class="row myContent"><!--content-->
                        Name  @userName   time
                    </div><!--/.content-->

                    <div class="row myContent"><!--content-->
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                    </div><!--/.content-->
                    <div class="row"><!--import link-->
                        <div class="col-xs-4 col-md-4" style="display: inline-block"><!--socialConnect-->
                            <a class="btn btn-social-icon btn-facebook">
                                <span class="fa fa-facebook"></span>
                                <span class="fa fa-twitter" style="padding-left: 10px"></span>
                                <span class="fa fa-google-plus" style="padding-left: 10px"></span>
                            </a>
                        </div><!--./socialConnect-->
                        <br>

                        <div class="col-xs-2 col-md-2" style="font-size: smaller"><!--viewPost-->
                            <span><a href="#" class=" viewPost"> Download</a></span>
                        </div>

                        <div class="col-xs-2 col-md-2" style="font-size: smaller"><!--viewPost-->
                            <span><a href="#" class=" viewPost">Mark as read</a></span>
                        </div>

                        <div class="col-xs-2 col-md-2" style="font-size: smaller"><!--viewPost-->
                            <span><a href="#" class=" viewPost"> View full site</a></span>
                        </div>

                        <div class="col-xs-2 col-md-2" style="font-size: smaller">
                            <span>View Post</span>
                        </div><!--./viewPost-->
                    </div><!--/.import link-->
                </div>
            </div>
        </div>
    </div>

</nav>



















<div class="modal fade" id="createTopic" tabindex="-1"
     role="dialog" aria-labelledby="createtopicModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="createtopicModalLabel">Create Topic</h4>
            </div>
            <form class="form-horizontal" action="createTopic" method="post">	<!--ACTION=createTopic-->
                <div class="modal-body">
                    <div class="form-group" >
                        <label class="control-label col-md-4" for="topicname" >Name*</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="topicname" placeholder="Enter Name" name="name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4" >Visiblity*</label>

                        <div class="col-md-8">
                            <div class="dropdown">

                                <select name="visibility" id="visibility" class="form-control">
                                    <option value="PUBLIC">Public</option>
                                    <option value="PRIVATE">Private</option>
                                </select>

                            </div>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">

                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="button" class="btn" data-dismiss="modal">Cancel</button>

                </div>
            </form>
        </div>
    </div>
</div>



<div id="sendMail" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Create Topic</h4>
                </div>

                <div class="modal-body">
                    <div class="row">

                        <div class="col-xs-6 center-block">
                            <label><h5>username</h5></label><br/><br/><br/>
                        </div>

                        <div class="col-xs-6">
                            <input type="text" name="username" required placeholder="Name"
                                   style="background-color: transparent !important;color: black !important;height: 25px;width: 65%"/> <br/><br/>
                        </div>

                    </div>

                </div>

                <div class="modal-footer">
                    <input type="submit" value="Send" class="btn btn-default btn-success"/>
                    <button type="button" class="btn btn-primary">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>



<div id="sendInvitation" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Send Invitation</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6 center-block">
                            <label><h5>Email*</h5></label><br/><br/><br/>
                            <label><h5>Topic*</h5></label>
                        </div>

                        <div class="col-xs-6">
                            <input type="email" required placeholder="Email" name="email"
                                   style="background-color: transparent !important;color: black !important;height: 25px;width: 65%"/> <br/><br/>
                            %{--<select class="form-control" name="topicvalue" id="topicValue" style="width: 65%">
                            <option value="">Profile</option>
                            <option value="">Post</option>
                            <option value="">Logout</option>
                        </select>--}%
                            <select name="topicvalue"
                                    from="${linksharing.Topic.list()}"
                                    optionKey="id"/>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <input type="submit" value="Send" class="btn btn-default btn-success"/>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>





<div id="shareDocuments" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Share Documents</h4>
            </div>

            <Form >
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6 center-block">
                            <label><h5>Documents*</h5></label><br/><br/><br/><br/>
                            <label><h5>Description*</h5></label><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                            <label><h5>Topic*</h5></label>
                        </div>

                        <div class="col-xs-6">
                            <label class="control-label">Select File</label>
                            <field id="input-1a" type="file" name="attachment" class="file"
                                   data-show-preview="false"/><br/>
                            <textarea required placeholder="Description" name="description"
                                      style="width: 80%"></textarea><br/><br/>
                            <select class="form-control" name="topicName" from='${subscribedTopic}'
                                    style="width: 80%">

                            </select>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <input type="submit" value="Submit" class="btn btn-default btn-success"/>
                    <input type="button" value="Cancel" class="btn btn-default btn-primary" data-dismiss="modal"/>

                </div>
            </Form>
        </div>
    </div>
</div>





<div id="shareLink" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <form >
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Share Link</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-6 center-block">
                            <label><h5>Link*</h5></label><br/><br/><br/>
                            <label><h5>Description*</h5></label><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                            <label><h5>Topic*</h5></label>
                        </div>

                        <div class="col-xs-6">
                            <input type="text" name="url" required placeholder="Link"
                                   style="background-color: transparent !important;color: black !important;height: 25px;width: 80%"/> <br/><br/>
                            <textarea required placeholder="Description" name="description"
                                      style="width: 80%"></textarea><br/><br/>
                            <select from='${subscribedTopic}' class="form-control" style="width: 80%" name="topic">

                            </select>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <input type="submit" class="btn btn-default btn-success"/>
                    <button type="button" class="btn btn-primary">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
