<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>Update User</title>
</head>
<base href="${pageContext.request.contextPath}"/>
<style type="text/css">
            table{
                width: 90%;
                background: #ccc;
                margin: 20px auto;
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
                <a href="${pageContext.request.contextPath }/login.jsp">Log out</a><br/><br/>
            </label>
        </div>
<h2 style=" margin-left: 45%;">Update User</h2>
        <form action="${pageContext.request.contextPath }/update_user" method="post" style="margin-top:50px;">
            <table>
                <tr>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Email</th>
                    
                </tr>
                
                <c:forEach items="${user_list}" var="us">
                <tr>
                	<input name="id" type="hidden" value="${us.id}" />
                    <td><input name="username" type="text" value="${us.username }" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="password" type="text" value="${us.password }" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="gender" type="text" value="${us.gender }" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="phone" type="text" value="${us.phone }" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="email" type="text" value="${us.email }" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                </tr>
                </c:forEach>
            </table>
            <input type="submit" value="Save" style="margin-left: 48%" />
        </form>
</body>
</html>