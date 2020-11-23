<%-- 
    Document   : school_list
    Created on : 2019-12-12, 10:52:55
    Author     : 98029
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
        <base href="${pageContext.request.contextPath}/">
        <style type="text/css">
            table{
                width: 90%;
                background: #ccc;
                margin: 10px auto;
                border-collapse: collapse;
            }
            th,td{
                height: 25px;
                line-height: 25px;
                text-align: center;
                border: 1px solid #ccc;
            }
            th{
                background: #eee;
                font-weight: normal;
            }
            tr{
                background: #fff;
            }
            tr:hover{
                background: #cc0;
            }
            td a{
                color: #06f;
                text-decoration: none;
            }
            td a:hover{
                color: #06f;
                text-decoration: underline;
            }
            .td_href{
                width: 15%;
            }
            .td_describe{
                width: 40%;
            }
            .td_id{
                width: 10%;
            }
            ul{
        		list-style-type: none;
        		margin: 0;
        		padding: 0;
    		}
    		ul>li{
        		float: left;
        		width: 50%;
    		}
   	 		ul>li>a{
        		display: block;
        		text-decoration: none;
        		color: #262626;
        		text-align: center;
        		font-size: 16px;
        		line-height: 50px;
        		font-family: 'Arial Rounded MT Bold', Geneva, sans-serif;
    		}
    	
    	
        </style>
    </head>
    <body>
    	<div style="width: 100%; height: 50px; position: relative; margin-top: 10px;">
            <div style="width: 70%; height: 50px; margin: auto auto; background: #f2f2f2;">
                <ul>
                    <li><a href="${pageContext.request.contextPath }/backtobooklist">Book List</a></li>
                    <li><a href="${pageContext.request.contextPath }/go_to_userinfo">User List</a></li>
                </ul>
            </div>
            <label style=" text-align: right; margin-right: 10px; font-size: 15px; float: right;">
            	管理员端
                <a href="login.jsp">Log out</a><br/><br/>
            </label>
        </div>
        <h2 style=" margin-left: 48%;">User List</h2>
        <a href="add_user.jsp" style=" margin-left: 80%;">+Add a new User</a>
        &nbsp;&nbsp;
        <form action="${pageContext.request.contextPath }/searchbyusername" style=" margin-left: 76%; margin-top: 10px;">
        	用户名：<input type="text" name="username" required="required">
			<button type="submit">搜索</button>
        </form>
        <table>
            <tr>
                <th>User ID</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Phone</th>
                <th></th>
            </tr>
            <c:forEach items="${user_list}" var="ut">
                <tr id="tr${ut.id}">
                    <td>${ut.id}</td>
                    <td><a href="${pageContext.request.contextPath }/go_to_userbook/${ut.username}">${ut.username}</a></td>
                    <td>${ut.password}</td>
                    <td>${ut.gender}</td>
                    <td>${ut.email}</td>
                    <td>${ut.phone}</td>
                    <td>
                        <a href="${pageContext.request.contextPath }/go_to_update_user/${ut.id}">Edit</a>&nbsp;
                        <a href="${pageContext.request.contextPath }/delete_user/${ut.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
