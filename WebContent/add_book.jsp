<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Book</title>
<base href="${pageContext.request.contextPath}"/>
<style type="text/css">
            table{
                width: 90%;
                background: #ccc;
                margin: 5px auto;
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
<h2 style=" margin-left: 48%;">Add Book</h2>
        <form action="${pageContext.request.contextPath }/add_book" method="post">
            <table>
                <tr>
                    <th>Book name</th>
                    <th>Author</th>
                    <th>Description</th>
                    <th>Publisher</th>
                    <th>Category</th>
                    <th>Number</th>
                </tr>
                <tr>
                    <td><input name="bookname" type="text" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="author" type="text" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><textarea name="description" rows="5" cols="20"></textarea></td>
                    <td><input name="publisher" type="text" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="category" type="text" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                    <td><input name="totalnumber" type="text" style=" margin-left: 0px; width: 95%; text-align: center;" /></td>
                </tr>
            </table>
            <input type="submit" value="Add" style="margin-left: 48%" />
        </form>

</body>
</html>