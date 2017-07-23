<%@ page import="org.springframework.web.servlet.ModelAndView" %><%--
  Created by IntelliJ IDEA.
  User: ashish
  Date: 19/7/17
  Time: 12:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/core/images/homeLogo.png">
    <link href="${pageContext.request.contextPath}/resources/core/css/linkSharing.css" rel="stylesheet">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

</head>
<body>


<!--navbar-collapse-responsive-->
<nav class="navbar navbar-default navbackground">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed makingcircle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="fa fa-bars fa-lg"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">
            <img alt="logo" src=".${pageContext.request.contextPath}/resources/core/images/logo.png" class="logo">
        </a>
        <a class="navbar-brand" href="/">
            Link Sharing
        </a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <form class="navbar-form navbar-right">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="  search-query form-control" placeholder="Search" />
                    <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                    </span>
                    <span class="glyphicon glyphicon-envelope" style="font-size: 2em ; padding-right: 8px" ></span>
                    <i class="fa fa-comments" style="font-size: 3em ; padding-right: 8px"></i>
                    <span class=" glyphicon glyphicon-paperclip" style="font-size: 2em ; padding-right: 8px"></span>
                    <span class=" glyphicon glyphicon-file" style="font-size: 2em ; padding-right: 8px"></span>
                    <span class=" glyphicon glyphicon-user" style="font-size: 2em ; padding-right: 8px"></span>

                    <span class="dropdown" style="float: right; margin-left: 25px ;padding-right: 0px">
                        <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown" style="padding-top: 20px">aashish</button>
                           <span class="caret" style="margin-left: -30px"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">profile</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">logout</a></li>
                                </ul>
                    </span>

                </div>

            </div>
        </form>



    </div><!-- /.navbar-collapse -->
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default">

                <div class="panel-heading ">
                    <div class="row">
                        <h4 class="panel-title pull-left" style="padding-top: 7.5px;">Users : </h4>

                        <div class="dropdown dropdownBtn">
                            <button class="btn  dropdown-toggle " type="button" data-toggle="dropdown">All Users
                                <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">active</a></li>
                                <li><a href="#">inactive</a></li>
                                <li class="divider"></li>
                                <li><a href="#">all user</a></li>
                            </ul>
                        </div>


                        <div class="input-group">
                            <input type="text" class="form-control pull-right " style="width: 130px" placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn "><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="panel-body">
                    <div class="table-responsive">


                        <table class="table">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Firstname</th>
                                <th>Lastname</th>
                                <th>Active</th>
                                <th>Manage</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="listValue" items="${userlist}">
                            <tr>
                                <td>${listValue.id}</td>
                                <td>${listValue.username}</td>
                                <td>${listValue.email}</td>
                                <td>${listValue.firstName}</td>
                                <td>${listValue.lastName}</td>
                                <td>${listValue.active}</td>

                                    <c:if test="${listValue.active==true}">

                                       <td><a href="/manage?id=${listValue.id}">click to deactivate</a>
                                       </td>
                                    </c:if>
                                <c:if test="${listValue.active==false}">

                                    <td>
                                        <a href="/manage?id=${listValue.id}">click to activate</a>
                                    </td>
                                </c:if>

                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
</body>
</html>