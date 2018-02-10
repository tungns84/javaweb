<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="block-header">
    <h2>List Roles</h2>
</div>
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    LIST OF ROLES
                    <small>Description ...</small>
                </h2>
                <ul class="header-dropdown m-r--5">
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="material-icons">more_vert</i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="javascript:void(0);">Action</a></li>
                            <li><a href="javascript:void(0);">Another action</a></li>
                            <li><a href="javascript:void(0);">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="body table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>ROLE NAME</th>
                        <th>DESCRIPTION</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listRoles}" var="item" varStatus="loopCounter">
                        <tr>
                            <th scope="row">${loopCounter.count}</th>
                            <td>${item.role}</td>
                            <td>${item.desc}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

