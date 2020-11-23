<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<base href="${pageContext.request.contextPath}/">
<style type="text/css">
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
    	table{
                width: 90%;
                margin: 30px auto;
                border-collapse: collapse;
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
    <h2 style=" margin-left: 42%;">${thisbook.bookid } ${thisbook.bookname } 详情描述</h2>
    <table>
    	<tr style="background: #eee;font-size:20px;">
    		<td>Description</td>
    	</tr>
    	<tr>
    		<td><p>${thisbook.description }</p></td>
    	</tr>
    	<tr style="background: #eee;font-size:20px;">
    		<td>预约名单</td>
    	</tr>
    	<tr>
    		<td>
    			<c:forEach items="${borrowinfolist}" var="bil">
    				<c:if test="${bil.state == 0 }">
    					<a href="${pageContext.request.contextPath }/go_to_userbook/${bil.username}"><span>${bil.username }</span></a>
    				</c:if>
    			</c:forEach>
    		</td>
    	</tr>
    	<tr style="background: #eee;font-size:20px;">
    		<td>借出名单</td>
    	</tr>
    	<tr>
    		<td>
    			<c:forEach items="${borrowinfolist}" var="bil">
    				<c:if test="${bil.state == 1 }">
    					<a href="${pageContext.request.contextPath }/go_to_userbook/${bil.username}"><span>${bil.username }</span></a>
    				</c:if>
    			</c:forEach>
    		</td>
    	</tr>
    </table>
    

</body>
</html>