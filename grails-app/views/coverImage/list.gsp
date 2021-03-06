<%--
  Created by IntelliJ IDEA.
  User: Hemanta
  Date: 3/10/2017
  Time: 12:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminYamsaa">
    <title></title>
</head>

<body>
<nav class="navbar">
    <g:link action="create" controller="coverImage" class="btn btn-primary navbar-btn">New</g:link>
</nav>
<h6 style="color: #761c19;">${flash.message}</h6>
<caption><h3>List</h3></caption>
<table id="example" class="display nowrap" cellspacing="0" width="100%">

    <thead>
    <tr>
        <th>SN</th>
        <th>View</th>

        <th>Image Name</th>
        <th>Show Status</th>
        <th>where to Slide?</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${coverImageList}" var="list" status='i'>
        <tr>
            <td>${i+1}</td>
            <td> <g:link action="show" id="${list?.id}" controller="coverImage" class="btn btn-primary btn-sm">view</g:link></td>
            <td>${list.imageName}</td>
            <td>${list.statusShow}</td>
            <td>${list.slidePlace}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<script>
    $(document).ready(function() {
        $('#example').DataTable( {
            "scrollY": 200,
            "scrollX": true
        } );
    } );
</script>
</body>
</html>