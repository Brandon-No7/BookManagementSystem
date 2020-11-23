<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book List</title>
        <base href="${pageContext.request.contextPath}/">
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
                <a href="login.jsp">Log out</a><br/><br/>
            </label>
        </div>
        <h2 style=" margin-left: 48%;">Book List</h2>
        <a href="add_book.jsp" style=" margin-left: 80%;">+Add a new Book</a>
        &nbsp;&nbsp;
        
        <br/>
        <form action="${pageContext.request.contextPath }/searchbybookname" style=" margin-left: 76%;">
        	用户名：<input type="text" name="bookname" required="required">
			<button type="submit">搜索</button>
        </form>
        <table>
            <tr>
                <th>Book ID</th>
                <th>Book Name</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Category</th>
                <th>Total Number</th>
                <th>Lending Quantity</th>
                <th>Current Number</th>
                <th></th>
            </tr>
            <c:forEach items="${book_list}" var="bl">
                <tr id="tr${bl.bookid}">
                	<td>${bl.bookid}</td>
                    <td><a href="${pageContext.request.contextPath }/showdescription/${bl.bookid}">${bl.bookname}</a></td>
                    <td>${bl.author}</td>
                    <td>${bl.publisher}</td>
                    <td>${bl.category}</td>
                    <td>${bl.totalnumber}</td>
                    <td>${bl.totalnumber-bl.currentnumber}</td>
                    <td>${bl.currentnumber}</td>

                    <td>
                        <a href="${pageContext.request.contextPath }/go_to_update_book/${bl.bookid}">Edit</a>&nbsp;
                        <a href="${pageContext.request.contextPath }/delete_book/${bl.bookid}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
