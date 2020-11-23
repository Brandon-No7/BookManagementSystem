<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
<base href="${pageContext.request.contextPath}"/>
<style type="text/css">
            table{
                width: 30%;
                background: #ccc;
                margin: 5px auto;
                border-collapse: collapse;
            }
            td{
                height: 25px;
                line-height: 25px;
                text-align: center;
                border: 1px solid #ccc;
            }
            .td1{
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
                <a href="${pageContext.request.contextPath }/login.jsp">Log out</a><br/><br/>
            </label>
        </div>
<h2 style=" margin-left: 48%;">Add User</h2>
        <form action="${pageContext.request.contextPath }/add_user" method="post">
            <table>
                
                <tr>
                	<td class="td1">username</td>
                	<td><input name="username" type="text" style=" margin-left: 0px; width: 60%; text-align: center;" /></td>
                </tr>
                <tr>
                	<td class="td1">password</td>
                	<td><input name="password" type="text" style=" margin-left: 0px; width: 60%; text-align: center;" /></td>
                </tr>
                <tr>
                	<td class="td1">gender</td>
                	<td>
                		<input type="radio" name="gender" value="Male">Male
        				<input type="radio" name="gender" value="Female">Female
                	</td>
                </tr>
                <tr>
                	<td class="td1">phone</td>
                	<td><input name="phone" type="text" style=" margin-left: 0px; width: 60%; text-align: center;" /></td>
                </tr>
                <tr>
                	<td class="td1">email</td>
                	<td><input name="email" type="text" style=" margin-left: 0px; width: 60%; text-align: center;" /></td>
                </tr>
                
            </table>
            <input type="submit" value="Add" style="margin-left: 48%" />
        </form>

</body>
</html>