<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="actionUrl" value="save"/>

<form:form id="roleForm" commandName="role" method="post"
           action="${actionUrl }" class="pure-form pure-form-aligned">

    <fieldset>
        <legend></legend>

        <div class="pure-control-group">
            <label for="role">ROLE NAME</label>
            <form:input path="role" placeholder="Role Name"/>
        </div>
        <div class="pure-control-group">
            <label for="desc">DESCRIPTION</label>
            <form:input path="desc" placeholder="Description" maxlength="15"/>
        </div>
        <div class="pure-control-group">
            <label for="price">Price</label>
            <form:input path="price" placeholder="Price" maxlength="10"/>
        </div>
        <div class="pure-control-group">
            <label for="authors">Author(s)</label>
            <form:input path="authors" placeholder="Authors"/>
        </div>
        <div class="pure-control-group">
            <label for="isbn">ISBN</label>
            <form:input path="isbn" placeholder="ISBN"/>
        </div>
        <div class="pure-control-group">
            <label for="publisher">Publisher</label>
            <form:input path="publisher" placeholder="Publisher"/>
        </div>
        <div class="pure-control-group">
            <label for="publishedOn">Published On</label>
            <form:input path="publishedOn" placeholder="YYYY-MM-DD" class="datepicker"/>
        </div>

        <form:input path="id" type="hidden"/>
    </fieldset>
</form:form>
