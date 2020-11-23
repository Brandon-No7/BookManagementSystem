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
        <title>Borrowing Records</title>
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
        <h2 style=" margin-left: 48%;">借书记录</h2>
        <table>
            <tr>
                <th>Rent ID</th>
                <th>User Name</th>
                <th>Book Id</th>
                <th>Book Name</th>
                <th>Days</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>State</th>
                <th></th>
            </tr>
            <c:forEach items="${borrow_list}" var="bl">
                <tr id="tr${bl.rentid}">
                	<td>${bl.rentid}</td>
                    <td>${bl.username}</td>
                    <td>${bl.bookid}</td>
                    <td>${bl.bookname}</td>
                    <td>${bl.day}</td>
                    <td>${bl.startdate}</td>
                    <td>${bl.enddate}</td>
                    <c:if test="${bl.state==0 }"><td>已预约</td></c:if>
                    <c:if test="${bl.state==1 }"><td>已借出</td></c:if>
                    <c:if test="${bl.state==2 }"><td>已归还</td></c:if>
                    <td>
                    	<c:if test="${bl.state==0 }"><a href="${pageContext.request.contextPath }/set_state1/${bl.rentid},${bl.username}">标为借出</a>&nbsp;</c:if>
                        <c:if test="${bl.state==1 }"><a href="${pageContext.request.contextPath }/set_state2/${bl.rentid},${bl.username}">标为归还</a>&nbsp;</c:if>
                        <a href="${pageContext.request.contextPath }/delete_borrow/${bl.rentid},${bl.username}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
